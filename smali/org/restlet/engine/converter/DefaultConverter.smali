.class public Lorg/restlet/engine/converter/DefaultConverter;
.super Lorg/restlet/engine/converter/ConverterHelper;
.source "DefaultConverter.java"


# static fields
.field private static final VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

.field private static final VARIANT_FORM:Lorg/restlet/engine/resource/VariantInfo;

.field private static final VARIANT_OBJECT:Lorg/restlet/engine/resource/VariantInfo;

.field private static final VARIANT_OBJECT_XML:Lorg/restlet/engine/resource/VariantInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/restlet/engine/resource/VariantInfo;

    sget-object v1, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    invoke-direct {v0, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    sput-object v0, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    .line 70
    new-instance v0, Lorg/restlet/engine/resource/VariantInfo;

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-direct {v0, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    sput-object v0, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_FORM:Lorg/restlet/engine/resource/VariantInfo;

    .line 74
    new-instance v0, Lorg/restlet/engine/resource/VariantInfo;

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-direct {v0, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    sput-object v0, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_OBJECT:Lorg/restlet/engine/resource/VariantInfo;

    .line 78
    new-instance v0, Lorg/restlet/engine/resource/VariantInfo;

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-direct {v0, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;)V

    sput-object v0, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_OBJECT_XML:Lorg/restlet/engine/resource/VariantInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/restlet/engine/converter/ConverterHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectClasses(Lorg/restlet/representation/Variant;)Ljava/util/List;
    .locals 3
    .param p1, "source"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Variant;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 85
    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 86
    const-class v2, Ljava/io/Reader;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 87
    const-class v2, Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    .line 92
    .local v0, "mediaType":Lorg/restlet/data/MediaType;
    sget-boolean v2, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {v2, v0}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v2, :cond_3

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {v2, v0}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    :cond_1
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 102
    .end local v0    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_2
    :goto_0
    return-object v1

    .line 97
    .restart local v0    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_3
    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-virtual {v2, v0}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-class v2, Lorg/restlet/data/Form;

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/converter/DefaultConverter;->addObjectClass(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getVariants(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/VariantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/VariantInfo;>;"
    if-eqz p1, :cond_1

    .line 110
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    :cond_0
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 113
    :cond_2
    const-class v1, Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lorg/restlet/representation/FileRepresentation;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    :cond_3
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_4
    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    const-class v1, Lorg/restlet/representation/InputRepresentation;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    :cond_5
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_6
    const-class v1, Ljava/io/Reader;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Lorg/restlet/representation/ReaderRepresentation;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    :cond_7
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_8
    const-class v1, Lorg/restlet/representation/Representation;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_ALL:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_9
    const-class v1, Lorg/restlet/data/Form;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_FORM:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_a
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_b

    .line 128
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_OBJECT:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    .line 130
    :cond_b
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 131
    sget-object v1, Lorg/restlet/engine/converter/DefaultConverter;->VARIANT_OBJECT_XML:Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->addVariant(Ljava/util/List;Lorg/restlet/engine/resource/VariantInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public score(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)F
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    .line 141
    const/high16 v0, -0x40800000    # -1.0f

    .line 143
    .local v0, "result":F
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 144
    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 147
    :cond_2
    instance-of v1, p1, Lorg/restlet/data/Form;

    if-eqz v1, :cond_4

    .line 148
    if-eqz p2, :cond_3

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 153
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 155
    :cond_4
    instance-of v1, p1, Ljava/io/InputStream;

    if-eqz v1, :cond_5

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 157
    :cond_5
    instance-of v1, p1, Ljava/io/Reader;

    if-eqz v1, :cond_6

    .line 158
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 159
    :cond_6
    instance-of v1, p1, Lorg/restlet/representation/Representation;

    if-eqz v1, :cond_7

    .line 160
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 161
    :cond_7
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 162
    if-eqz p2, :cond_b

    .line 163
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_8

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 167
    :cond_8
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_9

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 171
    :cond_9
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v1, :cond_a

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 175
    :cond_a
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const v0, 0x3f19999a    # 0.6f

    goto/16 :goto_0

    .line 180
    :cond_b
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 181
    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_0
.end method

.method public score(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)F
    .locals 3
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/restlet/resource/Resource;",
            ")F"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v0, -0x40800000    # -1.0f

    .line 193
    .local v0, "result":F
    if-eqz p2, :cond_11

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const/high16 v0, 0x3f800000    # 1.0f

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 198
    :cond_2
    const-class v1, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 200
    :cond_3
    const-class v1, Lorg/restlet/representation/EmptyRepresentation;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 202
    :cond_4
    const-class v1, Ljava/io/File;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    instance-of v1, p1, Lorg/restlet/representation/FileRepresentation;

    if-eqz v1, :cond_0

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 206
    :cond_5
    const-class v1, Lorg/restlet/data/Form;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 211
    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 213
    :cond_7
    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 214
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 215
    :cond_8
    const-class v1, Lorg/restlet/representation/InputRepresentation;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 216
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 217
    :cond_9
    const-class v1, Ljava/io/Reader;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 218
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 219
    :cond_a
    const-class v1, Lorg/restlet/representation/ReaderRepresentation;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 221
    :cond_b
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :cond_c
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_d

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 227
    :cond_d
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v1, :cond_e

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 230
    const v0, 0x3f19999a    # 0.6f

    goto/16 :goto_0

    .line 231
    :cond_e
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v1, :cond_f

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 235
    :cond_f
    sget-boolean v1, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v1, :cond_10

    sget-object v1, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 238
    const v0, 0x3f19999a    # 0.6f

    goto/16 :goto_0

    .line 240
    :cond_10
    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_0

    .line 243
    :cond_11
    instance-of v1, p1, Lorg/restlet/representation/ObjectRepresentation;

    if-eqz v1, :cond_0

    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method public toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/restlet/resource/Resource;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 256
    .local v2, "result":Ljava/lang/Object;
    if-eqz p2, :cond_e

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    move-object v2, p1

    .line 302
    .end local v2    # "result":Ljava/lang/Object;
    .end local p1    # "source":Lorg/restlet/representation/Representation;
    :cond_0
    :goto_0
    return-object v2

    .line 259
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local p1    # "source":Lorg/restlet/representation/Representation;
    :cond_1
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    .line 261
    .local v2, "result":Ljava/lang/Object;
    :cond_2
    const-class v3, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    new-instance v2, Lorg/restlet/representation/StringRepresentation;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    .local v2, "result":Lorg/restlet/representation/StringRepresentation;
    goto :goto_0

    .line 264
    .local v2, "result":Ljava/lang/Object;
    :cond_3
    const-class v3, Lorg/restlet/representation/EmptyRepresentation;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    const/4 v2, 0x0

    goto :goto_0

    .line 266
    :cond_4
    const-class v3, Ljava/io/File;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    instance-of v3, p1, Lorg/restlet/representation/FileRepresentation;

    if-eqz v3, :cond_5

    .line 268
    check-cast p1, Lorg/restlet/representation/FileRepresentation;

    .end local p1    # "source":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/representation/FileRepresentation;->getFile()Ljava/io/File;

    move-result-object v2

    .local v2, "result":Ljava/io/File;
    goto :goto_0

    .line 270
    .local v2, "result":Ljava/lang/Object;
    .restart local p1    # "source":Lorg/restlet/representation/Representation;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 272
    :cond_6
    const-class v3, Lorg/restlet/data/Form;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 273
    new-instance v2, Lorg/restlet/data/Form;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-direct {v2, p1}, Lorg/restlet/data/Form;-><init>(Lorg/restlet/representation/Representation;)V

    .local v2, "result":Lorg/restlet/data/Form;
    goto :goto_0

    .line 274
    .local v2, "result":Ljava/lang/Object;
    :cond_7
    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 275
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .local v2, "result":Ljava/io/InputStream;
    goto :goto_0

    .line 276
    .local v2, "result":Ljava/lang/Object;
    :cond_8
    const-class v3, Lorg/restlet/representation/InputRepresentation;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 277
    new-instance v2, Lorg/restlet/representation/InputRepresentation;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;)V

    .local v2, "result":Lorg/restlet/representation/InputRepresentation;
    goto :goto_0

    .line 278
    .local v2, "result":Ljava/lang/Object;
    :cond_9
    const-class v3, Ljava/io/Reader;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 279
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v2

    .local v2, "result":Ljava/io/Reader;
    goto :goto_0

    .line 280
    .local v2, "result":Ljava/lang/Object;
    :cond_a
    const-class v3, Lorg/restlet/representation/ReaderRepresentation;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 281
    new-instance v2, Lorg/restlet/representation/ReaderRepresentation;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/restlet/representation/ReaderRepresentation;-><init>(Ljava/io/Reader;)V

    .local v2, "result":Lorg/restlet/representation/ReaderRepresentation;
    goto/16 :goto_0

    .line 282
    .local v2, "result":Ljava/lang/Object;
    :cond_b
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    :cond_c
    instance-of v3, p1, Lorg/restlet/representation/ObjectRepresentation;

    if-eqz v3, :cond_d

    .line 285
    check-cast p1, Lorg/restlet/representation/ObjectRepresentation;

    .end local p1    # "source":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/representation/ObjectRepresentation;->getObject()Ljava/io/Serializable;

    move-result-object v2

    .local v2, "result":Ljava/io/Serializable;
    goto/16 :goto_0

    .line 288
    .local v2, "result":Ljava/lang/Object;
    .restart local p1    # "source":Lorg/restlet/representation/Representation;
    :cond_d
    :try_start_0
    new-instance v3, Lorg/restlet/representation/ObjectRepresentation;

    invoke-direct {v3, p1}, Lorg/restlet/representation/ObjectRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {v3}, Lorg/restlet/representation/ObjectRepresentation;->getObject()Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "result":Ljava/io/Serializable;
    goto/16 :goto_0

    .line 290
    .local v2, "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to create the Object representation"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 294
    throw v1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_e
    instance-of v3, p1, Lorg/restlet/representation/ObjectRepresentation;

    if-eqz v3, :cond_0

    .line 299
    check-cast p1, Lorg/restlet/representation/ObjectRepresentation;

    .end local p1    # "source":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/representation/ObjectRepresentation;->getObject()Ljava/io/Serializable;

    move-result-object v2

    .local v2, "result":Ljava/io/Serializable;
    goto/16 :goto_0
.end method

.method public toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;
    .param p3, "resource"    # Lorg/restlet/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Lorg/restlet/representation/Representation;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 311
    new-instance v0, Lorg/restlet/representation/StringRepresentation;

    .end local v0    # "result":Lorg/restlet/representation/Representation;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "source":Ljava/lang/Object;
    new-array v1, v2, [Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/restlet/data/MediaType;->getMostSpecific([Lorg/restlet/data/MediaType;)Lorg/restlet/data/MediaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    .line 337
    .restart local v0    # "result":Lorg/restlet/representation/Representation;
    :cond_0
    :goto_0
    return-object v0

    .line 314
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 315
    new-instance v0, Lorg/restlet/representation/FileRepresentation;

    .end local v0    # "result":Lorg/restlet/representation/Representation;
    check-cast p1, Ljava/io/File;

    .end local p1    # "source":Ljava/lang/Object;
    new-array v1, v2, [Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/restlet/data/MediaType;->getMostSpecific([Lorg/restlet/data/MediaType;)Lorg/restlet/data/MediaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/FileRepresentation;-><init>(Ljava/io/File;Lorg/restlet/data/MediaType;)V

    .restart local v0    # "result":Lorg/restlet/representation/Representation;
    goto :goto_0

    .line 318
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/restlet/data/Form;

    if-eqz v1, :cond_3

    .line 319
    check-cast p1, Lorg/restlet/data/Form;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Form;->getWebRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_0

    .line 320
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 321
    new-instance v0, Lorg/restlet/representation/InputRepresentation;

    .end local v0    # "result":Lorg/restlet/representation/Representation;
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "source":Ljava/lang/Object;
    new-array v1, v2, [Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/restlet/data/MediaType;->getMostSpecific([Lorg/restlet/data/MediaType;)Lorg/restlet/data/MediaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    .restart local v0    # "result":Lorg/restlet/representation/Representation;
    goto :goto_0

    .line 324
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Ljava/io/Reader;

    if-eqz v1, :cond_5

    .line 325
    new-instance v0, Lorg/restlet/representation/ReaderRepresentation;

    .end local v0    # "result":Lorg/restlet/representation/Representation;
    check-cast p1, Ljava/io/Reader;

    .end local p1    # "source":Ljava/lang/Object;
    new-array v1, v2, [Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/restlet/data/MediaType;->getMostSpecific([Lorg/restlet/data/MediaType;)Lorg/restlet/data/MediaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/ReaderRepresentation;-><init>(Ljava/io/Reader;Lorg/restlet/data/MediaType;)V

    .restart local v0    # "result":Lorg/restlet/representation/Representation;
    goto :goto_0

    .line 328
    .restart local p1    # "source":Ljava/lang/Object;
    :cond_5
    instance-of v1, p1, Lorg/restlet/representation/Representation;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 329
    check-cast v0, Lorg/restlet/representation/Representation;

    goto :goto_0

    .line 330
    :cond_6
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 331
    new-instance v0, Lorg/restlet/representation/ObjectRepresentation;

    .end local v0    # "result":Lorg/restlet/representation/Representation;
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "source":Ljava/lang/Object;
    new-array v1, v2, [Lorg/restlet/data/MediaType;

    invoke-virtual {p2}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/restlet/data/MediaType;->getMostSpecific([Lorg/restlet/data/MediaType;)Lorg/restlet/data/MediaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/ObjectRepresentation;-><init>(Ljava/io/Serializable;Lorg/restlet/data/MediaType;)V

    .restart local v0    # "result":Lorg/restlet/representation/Representation;
    goto/16 :goto_0
.end method

.method public updatePreferences(Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .local p2, "entity":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 343
    const-class v0, Lorg/restlet/data/Form;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_WWW_FORM:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    sget-boolean v0, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_BINARY_SUPPORTED:Z

    if-eqz v0, :cond_2

    .line 347
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    .line 350
    :cond_2
    sget-boolean v0, Lorg/restlet/representation/ObjectRepresentation;->VARIANT_OBJECT_XML_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_JAVA_OBJECT_XML:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    goto :goto_0

    .line 354
    :cond_3
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Ljava/io/Reader;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    :cond_4
    sget-object v0, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    .line 357
    sget-object v0, Lorg/restlet/data/MediaType;->TEXT_ALL:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v2}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    goto :goto_0

    .line 358
    :cond_5
    const-class v0, Ljava/io/InputStream;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :cond_6
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_OCTET_STREAM:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    .line 362
    sget-object v0, Lorg/restlet/data/MediaType;->APPLICATION_ALL:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, p1, v0, v2}, Lorg/restlet/engine/converter/DefaultConverter;->updatePreferences(Ljava/util/List;Lorg/restlet/data/MediaType;F)V

    goto :goto_0
.end method
