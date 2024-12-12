.class public abstract Lorg/restlet/security/Authorizer;
.super Lorg/restlet/routing/Filter;
.source "Authorizer.java"


# static fields
.field public static final ALWAYS:Lorg/restlet/security/Authorizer;

.field public static final AUTHENTICATED:Lorg/restlet/security/Authorizer;

.field public static final NEVER:Lorg/restlet/security/Authorizer;


# instance fields
.field private volatile identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/restlet/security/Authorizer$1;

    invoke-direct {v0}, Lorg/restlet/security/Authorizer$1;-><init>()V

    sput-object v0, Lorg/restlet/security/Authorizer;->ALWAYS:Lorg/restlet/security/Authorizer;

    .line 70
    new-instance v0, Lorg/restlet/security/Authorizer$2;

    invoke-direct {v0}, Lorg/restlet/security/Authorizer$2;-><init>()V

    sput-object v0, Lorg/restlet/security/Authorizer;->AUTHENTICATED:Lorg/restlet/security/Authorizer;

    .line 84
    new-instance v0, Lorg/restlet/security/Authorizer$3;

    invoke-direct {v0}, Lorg/restlet/security/Authorizer$3;-><init>()V

    sput-object v0, Lorg/restlet/security/Authorizer;->NEVER:Lorg/restlet/security/Authorizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/restlet/routing/Filter;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/restlet/routing/Filter;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/restlet/security/Authorizer;->identifier:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method protected abstract authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
.end method

.method protected authorized(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authorizer;->authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authorizer;->authorized(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/restlet/security/Authorizer;->unauthorized(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/restlet/security/Authorizer;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/restlet/security/Authorizer;->identifier:Ljava/lang/String;

    .line 161
    return-void
.end method

.method protected unauthorized(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 175
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 176
    const/4 v0, 0x2

    return v0
.end method
