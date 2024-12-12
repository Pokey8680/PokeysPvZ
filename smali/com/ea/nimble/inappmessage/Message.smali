.class public Lcom/ea/nimble/inappmessage/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_buttonLabel1Title:Ljava/lang/String;

.field m_buttonLabel2Title:Ljava/lang/String;

.field m_buttonLabel3Title:Ljava/lang/String;

.field m_message:Ljava/lang/String;

.field m_messageID:I

.field m_title:Ljava/lang/String;

.field m_url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "messageID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "button1"    # Ljava/lang/String;
    .param p6, "button2"    # Ljava/lang/String;
    .param p7, "button3"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    .line 24
    iput-object p2, p0, Lcom/ea/nimble/inappmessage/Message;->m_title:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/ea/nimble/inappmessage/Message;->m_message:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/ea/nimble/inappmessage/Message;->m_url:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel1Title:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel2Title:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel3Title:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public buttonLabel1Title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel1Title:Ljava/lang/String;

    return-object v0
.end method

.method public buttonLabel2Title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel2Title:Ljava/lang/String;

    return-object v0
.end method

.method public buttonLabel3Title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel3Title:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/Message;->m_url:Ljava/lang/String;

    return-object v0
.end method
