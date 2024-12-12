.class public Ljavax/ws/rs/core/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/ws/rs/core/Variant$VariantListBuilder;
    }
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private mediaType:Ljavax/ws/rs/core/MediaType;


# direct methods
.method public constructor <init>(Ljavax/ws/rs/core/MediaType;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p2, "language"    # Ljava/util/Locale;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaType, language, encoding all null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p3, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    .line 49
    iput-object p1, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    .line 50
    return-void
.end method

.method public static varargs encodings([Ljava/lang/String;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
    .locals 1
    .param p0, "encodings"    # [Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->newInstance()Ljavax/ws/rs/core/Variant$VariantListBuilder;

    move-result-object v0

    .line 116
    .local v0, "b":Ljavax/ws/rs/core/Variant$VariantListBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->encodings([Ljava/lang/String;)Ljavax/ws/rs/core/Variant$VariantListBuilder;

    .line 117
    return-object v0
.end method

.method public static varargs languages([Ljava/util/Locale;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
    .locals 1
    .param p0, "languages"    # [Ljava/util/Locale;

    .prologue
    .line 101
    invoke-static {}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->newInstance()Ljavax/ws/rs/core/Variant$VariantListBuilder;

    move-result-object v0

    .line 102
    .local v0, "b":Ljavax/ws/rs/core/Variant$VariantListBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->languages([Ljava/util/Locale;)Ljavax/ws/rs/core/Variant$VariantListBuilder;

    .line 103
    return-object v0
.end method

.method public static varargs mediaTypes([Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
    .locals 1
    .param p0, "mediaTypes"    # [Ljavax/ws/rs/core/MediaType;

    .prologue
    .line 87
    invoke-static {}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->newInstance()Ljavax/ws/rs/core/Variant$VariantListBuilder;

    move-result-object v0

    .line 88
    .local v0, "b":Ljavax/ws/rs/core/Variant$VariantListBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/Variant$VariantListBuilder;->mediaTypes([Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Variant$VariantListBuilder;

    .line 89
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Ljavax/ws/rs/core/Variant;

    .line 148
    .local v0, "other":Ljavax/ws/rs/core/Variant;
    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_2
    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    invoke-virtual {v2, v3}, Ljavax/ws/rs/core/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :cond_3
    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    return-object v0
.end method

.method public getMediaType()Ljavax/ws/rs/core/MediaType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v0, 0x7

    .line 127
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0xcb

    .line 128
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    invoke-virtual {v1}, Ljavax/ws/rs/core/MediaType;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 129
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 130
    return v0

    :cond_1
    move v1, v2

    .line 127
    goto :goto_0

    :cond_2
    move v1, v2

    .line 128
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 163
    .local v0, "w":Ljava/io/StringWriter;
    const-string v1, "Variant[mediaType="

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 164
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 165
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 166
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 167
    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 168
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 169
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 170
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :cond_0
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->mediaType:Ljavax/ws/rs/core/MediaType;

    invoke-virtual {v1}, Ljavax/ws/rs/core/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->language:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Ljavax/ws/rs/core/Variant;->encoding:Ljava/lang/String;

    goto :goto_2
.end method
