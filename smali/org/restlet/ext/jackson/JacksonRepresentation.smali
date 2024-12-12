.class public Lorg/restlet/ext/jackson/JacksonRepresentation;
.super Lorg/restlet/representation/WriterRepresentation;
.source "JacksonRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/restlet/representation/WriterRepresentation;"
    }
.end annotation


# instance fields
.field private jsonRepresentation:Lorg/restlet/representation/Representation;

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_JSON:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, p1}, Lorg/restlet/ext/jackson/JacksonRepresentation;-><init>(Lorg/restlet/data/MediaType;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/lang/Object;)V
    .locals 2
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/MediaType;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lorg/restlet/representation/WriterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 80
    iput-object p2, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    .line 81
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectClass:Ljava/lang/Class;

    .line 83
    iput-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    .line 84
    iput-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 85
    return-void

    .line 81
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Ljava/lang/Class;)V
    .locals 2
    .param p1, "representation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/representation/WriterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 96
    iput-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectClass:Ljava/lang/Class;

    .line 98
    iput-object p1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    .line 99
    iput-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 100
    return-void
.end method


# virtual methods
.method protected createObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 3

    .prologue
    .line 119
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 120
    .local v0, "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 121
    new-instance v1, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;)V

    return-object v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 135
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    .line 141
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v0

    .line 136
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonRepresentation;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonRepresentation;->createObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectClass:Ljava/lang/Class;

    .line 185
    return-void
.end method

.method public setObjectMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 0
    .param p1, "objectMapper"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 194
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    iput-object p1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 195
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/restlet/ext/jackson/JacksonRepresentation;, "Lorg/restlet/ext/jackson/JacksonRepresentation<TT;>;"
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->jsonRepresentation:Lorg/restlet/representation/Representation;

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/Writer;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/restlet/ext/jackson/JacksonRepresentation;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/ext/jackson/JacksonRepresentation;->object:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    goto :goto_0
.end method
