.class Lorg/restlet/security/MemoryRealm$DefaultVerifier;
.super Lorg/restlet/security/SecretVerifier;
.source "MemoryRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/security/MemoryRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/security/MemoryRealm;


# direct methods
.method private constructor <init>(Lorg/restlet/security/MemoryRealm;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/restlet/security/MemoryRealm$DefaultVerifier;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-direct {p0}, Lorg/restlet/security/SecretVerifier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/restlet/security/MemoryRealm;Lorg/restlet/security/MemoryRealm$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/restlet/security/MemoryRealm;
    .param p2, "x1"    # Lorg/restlet/security/MemoryRealm$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/restlet/security/MemoryRealm$DefaultVerifier;-><init>(Lorg/restlet/security/MemoryRealm;)V

    return-void
.end method


# virtual methods
.method protected createUser(Ljava/lang/String;)Lorg/restlet/security/User;
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lorg/restlet/security/User;

    invoke-direct {v0, p1}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "result":Lorg/restlet/security/User;
    iget-object v2, p0, Lorg/restlet/security/MemoryRealm$DefaultVerifier;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {v2, p1}, Lorg/restlet/security/MemoryRealm;->findUser(Ljava/lang/String;)Lorg/restlet/security/User;

    move-result-object v1

    .line 95
    .local v1, "user":Lorg/restlet/security/User;
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lorg/restlet/security/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/restlet/security/User;->setEmail(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lorg/restlet/security/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/restlet/security/User;->setFirstName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lorg/restlet/security/User;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/restlet/security/User;->setLastName(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-object v0
.end method

.method public verify(Ljava/lang/String;[C)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # [C

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "actualSecret":[C
    iget-object v2, p0, Lorg/restlet/security/MemoryRealm$DefaultVerifier;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {v2, p1}, Lorg/restlet/security/MemoryRealm;->findUser(Ljava/lang/String;)Lorg/restlet/security/User;

    move-result-object v1

    .line 110
    .local v1, "user":Lorg/restlet/security/User;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lorg/restlet/security/User;->getSecret()[C

    move-result-object v0

    .line 114
    :cond_0
    invoke-static {p2, v0}, Lorg/restlet/security/MemoryRealm$DefaultVerifier;->compare([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
