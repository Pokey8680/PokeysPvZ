.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginOAuthCodeLoginParams"
.end annotation


# instance fields
.field private oAuthCode:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->oAuthCode:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->oAuthCode:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->oAuthCode:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method getOauthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->oAuthCode:Ljava/lang/String;

    return-object v0
.end method
