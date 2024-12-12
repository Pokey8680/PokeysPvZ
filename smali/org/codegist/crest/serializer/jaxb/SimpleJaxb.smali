.class Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;
.super Ljava/lang/Object;
.source "SimpleJaxb.java"

# interfaces
.implements Lorg/codegist/crest/serializer/jaxb/Jaxb;


# instance fields
.field private final marshaller:Ljavax/xml/bind/Marshaller;

.field private final unmarshaller:Ljavax/xml/bind/Unmarshaller;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;)V
    .locals 1
    .param p1, "jaxbContext"    # Ljavax/xml/bind/JAXBContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;->marshaller:Ljavax/xml/bind/Marshaller;

    .line 42
    invoke-virtual {p1}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    .line 43
    return-void
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;->marshaller:Ljavax/xml/bind/Marshaller;

    const-string v1, "jaxb.encoding"

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/xml/bind/Marshaller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;->marshaller:Ljavax/xml/bind/Marshaller;

    invoke-interface {v0, p1, p2}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 48
    return-void
.end method

.method public unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/serializer/jaxb/SimpleJaxb;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    invoke-interface {v0, p3}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
