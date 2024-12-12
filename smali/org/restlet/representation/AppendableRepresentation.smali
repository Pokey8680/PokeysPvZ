.class public Lorg/restlet/representation/AppendableRepresentation;
.super Lorg/restlet/representation/StringRepresentation;
.source "AppendableRepresentation.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field private volatile appendableText:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/representation/AppendableRepresentation;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/Language;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "language"    # Lorg/restlet/data/Language;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/Language;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "language"    # Lorg/restlet/data/Language;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;Lorg/restlet/data/CharacterSet;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "language"    # Lorg/restlet/data/Language;
    .param p4, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;Lorg/restlet/data/CharacterSet;)V

    .line 130
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    .line 139
    :goto_0
    return-object p0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    .line 149
    :goto_0
    return-object p0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 160
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    if-eqz p1, :cond_1

    .line 172
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/representation/AppendableRepresentation;->appendableText:Ljava/lang/StringBuilder;

    goto :goto_0
.end method
