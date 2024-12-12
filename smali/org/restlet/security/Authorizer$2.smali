.class final Lorg/restlet/security/Authorizer$2;
.super Lorg/restlet/security/Authorizer;
.source "Authorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/security/Authorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/restlet/security/Authorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method protected unauthorized(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 78
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNAUTHORIZED:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 79
    const/4 v0, 0x2

    return v0
.end method
