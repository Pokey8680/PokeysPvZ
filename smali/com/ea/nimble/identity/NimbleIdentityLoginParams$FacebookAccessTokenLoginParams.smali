.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookAccessTokenLoginParams"
.end annotation


# instance fields
.field private expiryDate:Ljava/util/Date;

.field private facebookAccessToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "fbAccessToken"    # Ljava/lang/String;
    .param p2, "expiryDate"    # Ljava/util/Date;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->expiryDate:Ljava/util/Date;

    .line 192
    return-void
.end method


# virtual methods
.method getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->expiryDate:Ljava/util/Date;

    return-object v0
.end method

.method getFacebookAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    return-object v0
.end method
