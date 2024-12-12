.class public Lorg/restlet/engine/HttpProtocolHelper;
.super Lorg/restlet/engine/ProtocolHelper;
.source "HttpProtocolHelper.java"


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
    sget-object v0, Lorg/restlet/data/Method;->ALL:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 49
    sget-object v0, Lorg/restlet/data/Method;->CONNECT:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 50
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 51
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 52
    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 53
    sget-object v0, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 54
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 55
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 56
    sget-object v0, Lorg/restlet/data/Method;->TRACE:Lorg/restlet/data/Method;

    invoke-static {v0}, Lorg/restlet/data/Method;->register(Lorg/restlet/data/Method;)V

    .line 57
    return-void
.end method
