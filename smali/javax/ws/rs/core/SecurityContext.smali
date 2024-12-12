.class public interface abstract Ljavax/ws/rs/core/SecurityContext;
.super Ljava/lang/Object;
.source "SecurityContext.java"


# static fields
.field public static final BASIC_AUTH:Ljava/lang/String; = "BASIC"

.field public static final CLIENT_CERT_AUTH:Ljava/lang/String; = "CLIENT_CERT"

.field public static final DIGEST_AUTH:Ljava/lang/String; = "DIGEST"

.field public static final FORM_AUTH:Ljava/lang/String; = "FORM"


# virtual methods
.method public abstract getAuthenticationScheme()Ljava/lang/String;
.end method

.method public abstract getUserPrincipal()Ljava/security/Principal;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isUserInRole(Ljava/lang/String;)Z
.end method
