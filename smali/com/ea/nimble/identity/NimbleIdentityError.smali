.class public Lcom/ea/nimble/identity/NimbleIdentityError;
.super Lcom/ea/nimble/Error;
.source "NimbleIdentityError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    }
.end annotation


# static fields
.field public static final NIMBLE_IDENTITY_ERROR_DOMAIN:Ljava/lang/String; = "NimbleIdentityError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "NimbleIdentityError"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    const-string v0, "NimbleError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "NimbleIdentityError"

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static createWithData(Ljava/util/Map;)Lcom/ea/nimble/identity/NimbleIdentityError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ea/nimble/identity/NimbleIdentityError;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "error"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "errorCode":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/identity/NimbleIdentityError;->parseErrorCode(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    move-result-object v0

    .line 73
    .local v0, "code":Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    const-string v3, "error_description"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "reason":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 76
    move-object v2, v1

    .line 78
    :cond_0
    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityError;

    invoke-direct {v3, v0, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object v3
.end method

.method private static parseErrorCode(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1
    .param p0, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "invalid_request"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v0, "invalid_oauth_info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    goto :goto_0
.end method


# virtual methods
.method public isError(I)Z
    .locals 1
    .param p1, "identityErrorCode"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityError;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
