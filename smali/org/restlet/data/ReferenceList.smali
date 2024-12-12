.class public Lorg/restlet/data/ReferenceList;
.super Lorg/restlet/util/WrapperList;
.source "ReferenceList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/data/Reference;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile identifier:Lorg/restlet/data/Reference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-direct {p0, p1}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 5
    .param p1, "uriList"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v3

    sget v4, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    new-instance v3, Lorg/restlet/data/Reference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/restlet/data/ReferenceList;->setIdentifier(Lorg/restlet/data/Reference;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 102
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 103
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    new-instance v3, Lorg/restlet/data/Reference;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 110
    :cond_2
    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_3
    return-void

    .line 110
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw v3

    .line 110
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/restlet/data/ReferenceList;->identifier:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getTextRepresentation()Lorg/restlet/representation/Representation;
    .locals 6

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Reference;

    .line 149
    .local v1, "ref":Lorg/restlet/data/Reference;
    invoke-virtual {v1}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    .end local v1    # "ref":Lorg/restlet/data/Reference;
    :cond_1
    new-instance v3, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-direct {v3, v4, v5}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    return-object v3
.end method

.method public getWebRepresentation()Lorg/restlet/representation/Representation;
    .locals 7

    .prologue
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<html><body style=\"font-family: sans-serif;\">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<h2>Listing of \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"</h2>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getParentRef()Lorg/restlet/data/Reference;

    move-result-object v1

    .line 170
    .local v1, "parentRef":Lorg/restlet/data/Reference;
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/restlet/data/Reference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">..</a><br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .end local v1    # "parentRef":Lorg/restlet/data/Reference;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Reference;

    .line 178
    .local v2, "ref":Lorg/restlet/data/Reference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getIdentifier()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/restlet/data/Reference;->getRelativeRef(Lorg/restlet/data/Reference;)Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a><br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ref":Lorg/restlet/data/Reference;
    :cond_1
    const-string v4, "<h2>List of references</h2>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v4, "</body></html>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v4, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-direct {v4, v5, v6}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    return-object v4
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/data/ReferenceList;->setIdentifier(Lorg/restlet/data/Reference;)V

    .line 204
    return-void
.end method

.method public setIdentifier(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "identifier"    # Lorg/restlet/data/Reference;

    .prologue
    .line 193
    iput-object p1, p0, Lorg/restlet/data/ReferenceList;->identifier:Lorg/restlet/data/Reference;

    .line 194
    return-void
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/restlet/data/ReferenceList;->subList(II)Lorg/restlet/data/ReferenceList;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lorg/restlet/data/ReferenceList;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 218
    new-instance v0, Lorg/restlet/data/ReferenceList;

    invoke-virtual {p0}, Lorg/restlet/data/ReferenceList;->getDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/ReferenceList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
