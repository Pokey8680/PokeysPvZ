.class public Lorg/restlet/data/RecipientInfo;
.super Ljava/lang/Object;
.source "RecipientInfo.java"


# instance fields
.field private volatile comment:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;

.field private volatile protocol:Lorg/restlet/data/Protocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "agent"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/restlet/data/RecipientInfo;->protocol:Lorg/restlet/data/Protocol;

    .line 74
    iput-object p2, p0, Lorg/restlet/data/RecipientInfo;->name:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/restlet/data/RecipientInfo;->comment:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/restlet/data/RecipientInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/restlet/data/RecipientInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lorg/restlet/data/Protocol;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/restlet/data/RecipientInfo;->protocol:Lorg/restlet/data/Protocol;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/restlet/data/RecipientInfo;->comment:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/restlet/data/RecipientInfo;->name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/restlet/data/RecipientInfo;->protocol:Lorg/restlet/data/Protocol;

    .line 133
    return-void
.end method
