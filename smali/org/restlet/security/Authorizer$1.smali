.class final Lorg/restlet/security/Authorizer$1;
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
    .line 55
    invoke-direct {p0}, Lorg/restlet/security/Authorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
