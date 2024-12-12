.class public Lorg/restlet/representation/ObjectRepresentation;
.super Lorg/restlet/representation/OutputRepresentation;
.source "ObjectRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Lorg/restlet/representation/OutputRepresentation;"
    }
.end annotation


# static fields
.field public static final VARIANT_OBJECT_BINARY_SUPPORTED:Z

.field public static final VARIANT_OBJECT_XML_SUPPORTED:Z


# instance fields
.field private volatile object:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "org.restlet.representation.ObjectRepresentation.VARIANT_OBJECT_XML_SUPPORTED"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    .line 94
    const-string v0, "org.restlet.representation.ObjectRepresentation.VARIANT_OBJECT_BINARY_SUPPORTED"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    .local p1, "object":Ljava/io/Serializable;, "TT;"
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0}, Lorg/restlet/representation/OutputRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 220
    iput-object p1, p0, Lorg/restlet/representation/ObjectRepresentation;->object:Ljava/io/Serializable;

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/restlet/data/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    .local p1, "object":Ljava/io/Serializable;, "TT;"
    if-nez p2, :cond_0

    sget-object p2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    .end local p2    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_0
    invoke-direct {p0, p2}, Lorg/restlet/representation/OutputRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 238
    iput-object p1, p0, Lorg/restlet/representation/ObjectRepresentation;->object:Ljava/io/Serializable;

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "serializedRepresentation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/ObjectRepresentation;-><init>(Lorg/restlet/representation/Representation;Ljava/lang/ClassLoader;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "serializedRepresentation"    # Lorg/restlet/representation/Representation;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    sget-boolean v0, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/restlet/representation/ObjectRepresentation;-><init>(Lorg/restlet/representation/Representation;Ljava/lang/ClassLoader;ZZ)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Ljava/lang/ClassLoader;ZZ)V
    .locals 5
    .param p1, "serializedRepresentation"    # Lorg/restlet/representation/Representation;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "variantObjectBinarySupported"    # Z
    .param p4, "variantObjectXmlSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v2}, Lorg/restlet/representation/OutputRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 164
    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    if-nez p3, :cond_0

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SECURITY WARNING: The usage of ObjectInputStream when deserializing binary presentations from unstrusted sources can lead to malicious attacks. As pointed here (https://github.com/restlet/restlet-framework-java/issues/778), the ObjectInputStream class is able to force the JVM to execute unwanted Java code. Thus, the support of such format has been disactivated by default. You can activate this support by turning on the following system property: org.restlet.representation.ObjectRepresentation.VARIANT_OBJECT_BINARY_SUPPORTED."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, v2}, Lorg/restlet/representation/ObjectRepresentation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 178
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 179
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 180
    .local v1, "ois":Ljava/io/ObjectInputStream;
    if-eqz p2, :cond_1

    .line 181
    new-instance v1, Lorg/restlet/representation/ObjectRepresentation$1;

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    invoke-direct {v1, p0, v0, p2}, Lorg/restlet/representation/ObjectRepresentation$1;-><init>(Lorg/restlet/representation/ObjectRepresentation;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 195
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    iput-object v2, p0, Lorg/restlet/representation/ObjectRepresentation;->object:Ljava/io/Serializable;

    .line 197
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 198
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The input stream has not been fully read."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream;

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 210
    return-void

    .line 204
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The serialized representation must have this media type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {v4}, Lorg/restlet/data/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or this one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {v4}, Lorg/restlet/data/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getObject()Ljava/io/Serializable;
    .locals 1
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
    .line 248
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    iget-object v0, p0, Lorg/restlet/representation/ObjectRepresentation;->object:Ljava/io/Serializable;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/ObjectRepresentation;->setObject(Ljava/io/Serializable;)V

    .line 257
    invoke-super {p0}, Lorg/restlet/representation/OutputRepresentation;->release()V

    .line 258
    return-void
.end method

.method public setObject(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    .local p1, "object":Ljava/io/Serializable;, "TT;"
    iput-object p1, p0, Lorg/restlet/representation/ObjectRepresentation;->object:Ljava/io/Serializable;

    .line 268
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/restlet/representation/ObjectRepresentation;, "Lorg/restlet/representation/ObjectRepresentation<TT;>;"
    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p0}, Lorg/restlet/representation/ObjectRepresentation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0}, Lorg/restlet/representation/ObjectRepresentation;->getObject()Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 277
    .end local v0    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    return-void
.end method
