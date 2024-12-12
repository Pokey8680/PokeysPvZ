.class public Lorg/restlet/security/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/security/Principal;


# instance fields
.field private volatile email:Ljava/lang/String;

.field private volatile firstName:Ljava/lang/String;

.field private volatile identifier:Ljava/lang/String;

.field private volatile lastName:Ljava/lang/String;

.field private volatile secret:[C


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 67
    move-object v2, v1

    check-cast v2, [C

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 77
    move-object v2, v3

    check-cast v2, [C

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;[C)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 6
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # [C

    .prologue
    const/4 v3, 0x0

    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/User;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # [C
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/restlet/security/User;->identifier:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lorg/restlet/security/User;->secret:[C

    .line 110
    iput-object p3, p0, Lorg/restlet/security/User;->firstName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lorg/restlet/security/User;->lastName:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lorg/restlet/security/User;->email:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/restlet/security/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/restlet/security/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/restlet/security/User;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/restlet/security/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/restlet/security/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecret()[C
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/restlet/security/User;->secret:[C

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/restlet/security/User;->email:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/restlet/security/User;->firstName:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/restlet/security/User;->identifier:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/restlet/security/User;->lastName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSecret([C)V
    .locals 0
    .param p1, "secret"    # [C

    .prologue
    .line 247
    iput-object p1, p0, Lorg/restlet/security/User;->secret:[C

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/restlet/security/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
