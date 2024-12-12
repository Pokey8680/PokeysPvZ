.class public final Lorg/restlet/data/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# instance fields
.field private volatile acceptingRanges:Z

.field private volatile address:Ljava/lang/String;

.field private volatile agent:Ljava/lang/String;

.field private volatile port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/restlet/data/ServerInfo;->address:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/restlet/data/ServerInfo;->agent:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/data/ServerInfo;->port:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/data/ServerInfo;->acceptingRanges:Z

    .line 62
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/restlet/data/ServerInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/restlet/data/ServerInfo;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/restlet/data/ServerInfo;->port:I

    return v0
.end method

.method public isAcceptingRanges()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/restlet/data/ServerInfo;->acceptingRanges:Z

    return v0
.end method

.method public setAcceptingRanges(Z)V
    .locals 0
    .param p1, "acceptingRanges"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lorg/restlet/data/ServerInfo;->acceptingRanges:Z

    .line 114
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/restlet/data/ServerInfo;->address:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/restlet/data/ServerInfo;->agent:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/restlet/data/ServerInfo;->port:I

    .line 145
    return-void
.end method
