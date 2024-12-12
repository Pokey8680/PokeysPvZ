.class public Lorg/restlet/engine/WebDavProtocolHelper;
.super Lorg/restlet/engine/ProtocolHelper;
.source "WebDavProtocolHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/restlet/engine/ProtocolHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public registerMethods()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/restlet/data/Method;->COPY:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 49
    sget-object v0, Lorg/restlet/data/Method;->LOCK:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 50
    sget-object v0, Lorg/restlet/data/Method;->MKCOL:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 51
    sget-object v0, Lorg/restlet/data/Method;->MOVE:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 52
    sget-object v0, Lorg/restlet/data/Method;->PROPFIND:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 53
    sget-object v0, Lorg/restlet/data/Method;->PROPPATCH:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 54
    sget-object v0, Lorg/restlet/data/Method;->UNLOCK:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 55
    return-void
.end method
