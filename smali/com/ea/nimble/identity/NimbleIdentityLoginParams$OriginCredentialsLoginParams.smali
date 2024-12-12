.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginCredentialsLoginParams"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    return-object v0
.end method

.method getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    return-object v0
.end method
