package com.newtech.util;

import com.newtech.model.User;
import io.fusionauth.jwt.Signer;
import io.fusionauth.jwt.Verifier;
import io.fusionauth.jwt.domain.JWT;
import io.fusionauth.jwt.hmac.HMACSigner;
import io.fusionauth.jwt.hmac.HMACVerifier;

import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JwtTokenUtil {
    private static final String CLAIM_KEY_USERNAME = "sub";
    private static final String CLAIM_KEY_PASSWORD = "123";
    private static final String CLAIM_KEY_TYPE = "USER";
    //    private static final String CLAIM_KEY_CREATOR = "created";
    private static final String CLAIM_KEY_CREATED = "created";
    private static final String ISSUER = "www.newtech.com";
    private static final String SECRET = "P6_58}aKSM(rVQp(?4}];i%&HXU!Nq!x)t0Xz1WQypX6Uu6u/31+2&g-fLS6D/";
    private static final Long TOKEN_LIFE = 10L;
//    2L 1 min, 10L 10 min
    private static final Long REFRESH_TOKEN_LIFE = 43200L;

    private String generateToken(Map<String, String> claims, Long expiration, String subject) {
        // Build an HMAC signer using a SHA-256 hash
        Signer signer = HMACSigner.newSHA256Signer(SECRET);

        // Build a new JWT with an issuer(iss), issued at(iat), subject(sub) and expiration(exp)
        JWT jwt = new JWT().setIssuer(ISSUER)
                .setIssuedAt(ZonedDateTime.now(ZoneOffset.UTC))
                .setSubject(subject)
                .setExpiration(ZonedDateTime.now(ZoneOffset.UTC).plusMinutes(expiration));

        claims.keySet().forEach(k -> {
            if (claims.get(k) != null) {
                jwt.addClaim(k, claims.get(k));
            }
        });

        return JWT.getEncoder().encode(jwt, signer);
    }

    public Map<String, String> getClaimsFromToken(String token) {
        // Build an HMC verifier using the same secret that was used to sign the JWT
        Verifier verifier = HMACVerifier.newVerifier(SECRET);

        // Verify and decode the encoded string JWT to a rich object
        JWT jwt = JWT.getDecoder().decode(token, verifier);

        Map<String, String> claims = new HashMap<>();
        if (jwt != null) {
            jwt.getAllClaims().forEach((k, v) -> {
                claims.put(k, v.toString());
            });
        }

        return claims;
    }

    public String getUsernameFromToken(String token) {
//        try {
        Map<String, String> claims = getClaimsFromToken(token);
        return claims.get(CLAIM_KEY_USERNAME);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
    }

    public String getPasswordFromToken(String token) {
//        try {
        Map<String, String> claims = getClaimsFromToken(token);
        return claims.get(CLAIM_KEY_PASSWORD);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
    }

    public String getTypeFromToken(String token) {
//        try {
        Map<String, String> claims = getClaimsFromToken(token);
        return claims.get(CLAIM_KEY_TYPE);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
    }

    public Date getExpireDateFromToken(String token) {
        // Build an HMC verifier using the same secret that was used to sign the JWT
        Verifier verifier = HMACVerifier.newVerifier(SECRET);

        // Verify and decode the encoded string JWT to a rich object
        JWT jwt = JWT.getDecoder().decode(token, verifier);

        return new Date(jwt.expiration.toInstant().toEpochMilli());
    }

    private boolean isTokenExpired(String token) {
        Date expiredate = getExpireDateFromToken(token);
        return expiredate.before(new Date(System.currentTimeMillis()));
    }

    public boolean validateToken(String token, User userDetails) {
        String username = getUsernameFromToken(token);
        return username.equals(userDetails.getEmail()) && !isTokenExpired(token);
    }

    public String generateAcessToken(User userDetails) {
        Map<String, String> claims = new HashMap<>();
        claims.put(CLAIM_KEY_USERNAME, userDetails.getEmail());
        claims.put(CLAIM_KEY_PASSWORD, userDetails.getPassword());
        claims.put(CLAIM_KEY_CREATED, new Date().toString());

        return generateToken(claims, TOKEN_LIFE, userDetails.getEmail());
    }

    public String generateRefreshToken(User userDetails) {
        Map<String, String> claims = new HashMap<>();
        claims.put(CLAIM_KEY_USERNAME, userDetails.getEmail());
        claims.put(CLAIM_KEY_PASSWORD, userDetails.getPassword());
        claims.put(CLAIM_KEY_CREATED, new Date().toString());

        return generateToken(claims, REFRESH_TOKEN_LIFE, userDetails.getEmail());
    }
}