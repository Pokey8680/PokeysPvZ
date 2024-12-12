.class public Lcom/ea/nimble/Error;
.super Ljava/lang/Exception;
.source "Error.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Error$Code;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ea/nimble/Error;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_DOMAIN:Ljava/lang/String; = "NimbleError"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_code:I

.field private m_domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/ea/nimble/Error$1;

    invoke-direct {v0}, Lcom/ea/nimble/Error$1;-><init>()V

    sput-object v0, Lcom/ea/nimble/Error;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 183
    invoke-virtual {p0, p1}, Lcom/ea/nimble/Error;->readFromParcel(Landroid/os/Parcel;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/ea/nimble/Error$Code;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Lcom/ea/nimble/Error$Code;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    const-string v0, "NimbleError"

    invoke-virtual {p1}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iput-object p1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/ea/nimble/Error;->m_code:I

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/ea/nimble/Error;->m_code:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    return-object v0
.end method

.method public isError(Lcom/ea/nimble/Error$Code;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/ea/nimble/Error$Code;

    .prologue
    .line 118
    iget v0, p0, Lcom/ea/nimble/Error;->m_code:I

    invoke-virtual {p1}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    .line 258
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ea/nimble/Error;->m_code:I

    .line 261
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 262
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ea/nimble/Error;->m_code:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 247
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v3, "str":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_0
    iget v4, p0, Lcom/ea/nimble/Error;->m_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/ea/nimble/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 137
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 140
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 142
    const-string v4, "\nCaused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 144
    .local v1, "causeCallstackWriter":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v1    # "causeCallstackWriter":Ljava/io/StringWriter;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 131
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 279
    :goto_0
    iget v1, p0, Lcom/ea/nimble/Error;->m_code:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 283
    invoke-virtual {p0}, Lcom/ea/nimble/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 284
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 285
    return-void

    .line 274
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    const-string v1, ""

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/ea/nimble/Error;->m_domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    :goto_0
    iget v1, p0, Lcom/ea/nimble/Error;->m_code:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {p0}, Lcom/ea/nimble/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 223
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 230
    :goto_1
    return-void

    .line 213
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_1
.end method
