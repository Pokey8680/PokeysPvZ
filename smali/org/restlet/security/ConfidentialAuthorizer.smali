.class public Lorg/restlet/security/ConfidentialAuthorizer;
.super Lorg/restlet/security/Authorizer;
.source "ConfidentialAuthorizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/restlet/security/Authorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/restlet/Request;->isConfidential()Z

    move-result v0

    return v0
.end method
