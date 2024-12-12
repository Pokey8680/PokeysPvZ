.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookClientLoginParams"
.end annotation


# instance fields
.field private facebookPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    .line 237
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 239
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->facebookPermissions:Ljava/util/List;

    .line 242
    const-string v0, "email"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->facebookPermissions:Ljava/util/List;

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->facebookPermissions:Ljava/util/List;

    .line 252
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->facebookPermissions:Ljava/util/List;

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method getFacebookPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->facebookPermissions:Ljava/util/List;

    return-object v0
.end method
