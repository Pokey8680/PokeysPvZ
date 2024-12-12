.class public Lorg/restlet/data/Warning;
.super Ljava/lang/Object;
.source "Warning.java"


# instance fields
.field private volatile agent:Ljava/lang/String;

.field private volatile date:Ljava/util/Date;

.field private volatile status:Lorg/restlet/data/Status;

.field private volatile text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/restlet/data/Warning;->agent:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/restlet/data/Warning;->date:Ljava/util/Date;

    .line 68
    iput-object v0, p0, Lorg/restlet/data/Warning;->status:Lorg/restlet/data/Status;

    .line 69
    iput-object v0, p0, Lorg/restlet/data/Warning;->text:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/restlet/data/Warning;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/restlet/data/Warning;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lorg/restlet/data/Status;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/restlet/data/Warning;->status:Lorg/restlet/data/Status;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/restlet/data/Warning;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/restlet/data/Warning;->agent:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/restlet/data/Warning;->date:Ljava/util/Date;

    .line 126
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;)V
    .locals 0
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/restlet/data/Warning;->status:Lorg/restlet/data/Status;

    .line 136
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/restlet/data/Warning;->text:Ljava/lang/String;

    .line 146
    return-void
.end method
