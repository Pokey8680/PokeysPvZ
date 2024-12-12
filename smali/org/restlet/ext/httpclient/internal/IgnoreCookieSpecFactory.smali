.class public Lorg/restlet/ext/httpclient/internal/IgnoreCookieSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreCookieSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 55
    new-instance v0, Lorg/restlet/ext/httpclient/internal/IgnoreCookieSpec;

    invoke-direct {v0}, Lorg/restlet/ext/httpclient/internal/IgnoreCookieSpec;-><init>()V

    return-object v0
.end method
