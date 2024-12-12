.class public Lorg/restlet/engine/header/PreferenceReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "PreferenceReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/data/Metadata;",
        ">",
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Preference",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field public static final TYPE_CHARACTER_SET:I = 0x1

.field public static final TYPE_ENCODING:I = 0x2

.field public static final TYPE_LANGUAGE:I = 0x3

.field public static final TYPE_MEDIA_TYPE:I = 0x4


# instance fields
.field private volatile type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 199
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    invoke-direct {p0, p2}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 200
    iput p1, p0, Lorg/restlet/engine/header/PreferenceReader;->type:I

    .line 201
    return-void
.end method

.method public static addCharacterSets(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    .locals 4
    .param p0, "acceptCharsetHeader"    # Ljava/lang/String;
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 83
    if-eqz p0, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    sget-object v3, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-direct {v2, v3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lorg/restlet/engine/header/PreferenceReader;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/restlet/engine/header/PreferenceReader;-><init>(ILjava/lang/String;)V

    .line 93
    .local v0, "pr":Lorg/restlet/engine/header/PreferenceReader;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/PreferenceReader;->addValues(Ljava/util/Collection;)V

    goto :goto_0

    .line 96
    .end local v0    # "pr":Lorg/restlet/engine/header/PreferenceReader;
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    sget-object v3, Lorg/restlet/data/CharacterSet;->ALL:Lorg/restlet/data/CharacterSet;

    invoke-direct {v2, v3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addEncodings(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    .locals 4
    .param p0, "acceptEncodingHeader"    # Ljava/lang/String;
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    .line 113
    new-instance v0, Lorg/restlet/engine/header/PreferenceReader;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/restlet/engine/header/PreferenceReader;-><init>(ILjava/lang/String;)V

    .line 115
    .local v0, "pr":Lorg/restlet/engine/header/PreferenceReader;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/PreferenceReader;->addValues(Ljava/util/Collection;)V

    .line 120
    .end local v0    # "pr":Lorg/restlet/engine/header/PreferenceReader;
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    sget-object v3, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-direct {v2, v3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addLanguages(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    .locals 4
    .param p0, "acceptLanguageHeader"    # Ljava/lang/String;
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 133
    if-eqz p0, :cond_0

    .line 134
    new-instance v0, Lorg/restlet/engine/header/PreferenceReader;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/restlet/engine/header/PreferenceReader;-><init>(ILjava/lang/String;)V

    .line 136
    .local v0, "pr":Lorg/restlet/engine/header/PreferenceReader;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/PreferenceReader;->addValues(Ljava/util/Collection;)V

    .line 140
    .end local v0    # "pr":Lorg/restlet/engine/header/PreferenceReader;
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    sget-object v3, Lorg/restlet/data/Language;->ALL:Lorg/restlet/data/Language;

    invoke-direct {v2, v3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addMediaTypes(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    .locals 4
    .param p0, "acceptMediaTypeHeader"    # Ljava/lang/String;
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    .line 154
    new-instance v0, Lorg/restlet/engine/header/PreferenceReader;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/restlet/engine/header/PreferenceReader;-><init>(ILjava/lang/String;)V

    .line 156
    .local v0, "pr":Lorg/restlet/engine/header/PreferenceReader;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/PreferenceReader;->addValues(Ljava/util/Collection;)V

    .line 161
    .end local v0    # "pr":Lorg/restlet/engine/header/PreferenceReader;
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    sget-object v3, Lorg/restlet/data/MediaType;->ALL:Lorg/restlet/data/MediaType;

    invoke-direct {v2, v3}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static readQuality(Ljava/lang/String;)F
    .locals 4
    .param p0, "quality"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 175
    .local v1, "result":F
    invoke-static {v1}, Lorg/restlet/engine/header/PreferenceWriter;->isValidQuality(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return v1

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid quality value detected. Value must be between 0 and 1."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "result":F
    :catch_0
    move-exception v0

    .line 182
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid quality value detected. Value must be between 0 and 1."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected createPreference(Ljava/lang/CharSequence;Lorg/restlet/util/Series;)Lorg/restlet/data/Preference;
    .locals 5
    .param p1, "metadata"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)",
            "Lorg/restlet/data/Preference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    .local p2, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    if-nez p2, :cond_0

    .line 218
    new-instance v2, Lorg/restlet/data/Preference;

    invoke-direct {v2}, Lorg/restlet/data/Preference;-><init>()V

    .line 220
    .local v2, "result":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iget v3, p0, Lorg/restlet/engine/header/PreferenceReader;->type:I

    packed-switch v3, :pswitch_data_0

    .line 262
    :goto_0
    return-object v2

    .line 222
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/CharacterSet;->valueOf(Ljava/lang/String;)Lorg/restlet/data/CharacterSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/Encoding;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Encoding;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/Language;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Language;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/MediaType;->valueOf(Ljava/lang/String;)Lorg/restlet/data/MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 238
    .end local v2    # "result":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_0
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/PreferenceReader;->extractMediaParams(Lorg/restlet/util/Series;)Lorg/restlet/util/Series;

    move-result-object v0

    .line 239
    .local v0, "mediaParams":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/PreferenceReader;->extractQuality(Lorg/restlet/util/Series;)F

    move-result v1

    .line 240
    .local v1, "quality":F
    new-instance v2, Lorg/restlet/data/Preference;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;FLorg/restlet/util/Series;)V

    .line 242
    .restart local v2    # "result":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    iget v3, p0, Lorg/restlet/engine/header/PreferenceReader;->type:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 244
    :pswitch_4
    new-instance v3, Lorg/restlet/data/CharacterSet;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 248
    :pswitch_5
    new-instance v3, Lorg/restlet/data/Encoding;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 252
    :pswitch_6
    new-instance v3, Lorg/restlet/data/Language;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 256
    :pswitch_7
    new-instance v3, Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/restlet/data/MediaType;-><init>(Ljava/lang/String;Lorg/restlet/util/Series;)V

    invoke-virtual {v2, v3}, Lorg/restlet/data/Preference;->setMetadata(Lorg/restlet/data/Metadata;)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 242
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected extractMediaParams(Lorg/restlet/util/Series;)Lorg/restlet/util/Series;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v3, 0x0

    .line 275
    .local v3, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v2, 0x0

    .line 276
    .local v2, "qualityFound":Z
    const/4 v1, 0x0

    .line 278
    .local v1, "param":Lorg/restlet/data/Parameter;
    if-eqz p1, :cond_1

    .line 279
    new-instance v3, Lorg/restlet/util/Series;

    .end local v3    # "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const-class v4, Lorg/restlet/data/Parameter;

    invoke-direct {v3, v4}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 281
    .restart local v3    # "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p1}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :goto_0
    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "param":Lorg/restlet/data/Parameter;
    check-cast v1, Lorg/restlet/data/Parameter;

    .line 285
    .restart local v1    # "param":Lorg/restlet/data/Parameter;
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "q"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const/4 v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 289
    invoke-virtual {v3, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :cond_1
    return-object v3
.end method

.method protected extractQuality(Lorg/restlet/util/Series;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/high16 v3, 0x3f800000    # 1.0f

    .line 306
    .local v3, "result":F
    const/4 v0, 0x0

    .line 308
    .local v0, "found":Z
    if-eqz p1, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, "param":Lorg/restlet/data/Parameter;
    invoke-virtual {p1}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 312
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Lorg/restlet/data/Parameter;
    check-cast v2, Lorg/restlet/data/Parameter;

    .line 314
    .restart local v2    # "param":Lorg/restlet/data/Parameter;
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "q"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/restlet/engine/header/PreferenceReader;->readQuality(Ljava/lang/String;)F

    move-result v3

    .line 316
    const/4 v0, 0x1

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 325
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    .end local v2    # "param":Lorg/restlet/data/Parameter;
    :cond_1
    return v3
.end method

.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/header/PreferenceReader;->readValue()Lorg/restlet/data/Preference;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Preference;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/data/Preference",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/engine/header/PreferenceReader;, "Lorg/restlet/engine/header/PreferenceReader<TT;>;"
    const/4 v14, 0x0

    const/16 v13, 0x3b

    const/4 v12, -0x1

    .line 334
    const/4 v10, 0x0

    .line 336
    .local v10, "result":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    const/4 v7, 0x1

    .line 337
    .local v7, "readingMetadata":Z
    const/4 v8, 0x0

    .line 338
    .local v8, "readingParamName":Z
    const/4 v9, 0x0

    .line 340
    .local v9, "readingParamValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v1, "metadataBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 342
    .local v3, "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 344
    .local v4, "paramValueBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 345
    .local v5, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, "next":I
    :cond_0
    :goto_0
    if-nez v10, :cond_1b

    .line 348
    invoke-virtual {p0}, Lorg/restlet/engine/header/PreferenceReader;->read()I

    move-result v2

    .line 350
    if-eqz v7, :cond_6

    .line 351
    if-eq v2, v12, :cond_1

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 352
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1b

    .line 355
    invoke-virtual {p0, v1, v14}, Lorg/restlet/engine/header/PreferenceReader;->createPreference(Ljava/lang/CharSequence;Lorg/restlet/util/Series;)Lorg/restlet/data/Preference;

    move-result-object v10

    goto :goto_0

    .line 360
    :cond_2
    if-ne v2, v13, :cond_4

    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 364
    const/4 v7, 0x0

    .line 365
    const/4 v8, 0x1

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .restart local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    new-instance v5, Lorg/restlet/util/Series;

    .end local v5    # "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const-class v11, Lorg/restlet/data/Parameter;

    invoke-direct {v5, v11}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .restart local v5    # "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    goto :goto_0

    .line 369
    :cond_3
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Empty metadata name detected."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 371
    :cond_4
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 373
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 374
    int-to-char v11, v2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_5
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected character \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" detected."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 379
    :cond_6
    if-eqz v8, :cond_f

    .line 380
    const/16 v11, 0x3d

    if-ne v2, v11, :cond_8

    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 383
    const/4 v8, 0x0

    .line 384
    const/4 v9, 0x1

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "paramValueBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4    # "paramValueBuffer":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 387
    :cond_7
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Empty parameter name detected."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 389
    :cond_8
    if-eq v2, v12, :cond_9

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 390
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 392
    invoke-static {v3, v14}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0, v1, v5}, Lorg/restlet/engine/header/PreferenceReader;->createPreference(Ljava/lang/CharSequence;Lorg/restlet/util/Series;)Lorg/restlet/data/Preference;

    move-result-object v10

    goto/16 :goto_0

    .line 395
    :cond_a
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Empty parameter name detected."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 397
    :cond_b
    if-ne v2, v13, :cond_c

    .line 399
    invoke-static {v3, v14}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .restart local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 402
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 403
    :cond_c
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 405
    :cond_d
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 406
    int-to-char v11, v2

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 408
    :cond_e
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected character \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" detected."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 411
    :cond_f
    if-eqz v9, :cond_0

    .line 412
    if-eq v2, v12, :cond_10

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 413
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_11

    .line 415
    invoke-static {v3, v4}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0, v1, v5}, Lorg/restlet/engine/header/PreferenceReader;->createPreference(Ljava/lang/CharSequence;Lorg/restlet/util/Series;)Lorg/restlet/data/Preference;

    move-result-object v10

    goto/16 :goto_0

    .line 419
    :cond_11
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Empty parameter value detected"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 421
    :cond_12
    if-ne v2, v13, :cond_13

    .line 423
    invoke-static {v3, v4}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .restart local v3    # "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 427
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 428
    :cond_13
    const/16 v11, 0x22

    if-ne v2, v11, :cond_19

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_19

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "done":Z
    const/4 v6, 0x0

    .line 433
    .local v6, "quotedPair":Z
    :goto_1
    if-nez v0, :cond_0

    if-eq v2, v12, :cond_0

    .line 434
    invoke-virtual {p0}, Lorg/restlet/engine/header/PreferenceReader;->read()I

    move-result v2

    .line 436
    if-eqz v6, :cond_15

    .line 438
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 439
    int-to-char v11, v2

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    const/4 v6, 0x0

    goto :goto_1

    .line 442
    :cond_14
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid character detected in quoted string. Please check your value"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 445
    :cond_15
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 447
    const/4 v0, 0x1

    goto :goto_1

    .line 448
    :cond_16
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_17

    .line 450
    const/4 v6, 0x1

    goto :goto_1

    .line 451
    :cond_17
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 452
    int-to-char v11, v2

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 454
    :cond_18
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid character detected in quoted string. Please check your value"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 458
    .end local v0    # "done":Z
    .end local v6    # "quotedPair":Z
    :cond_19
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 459
    int-to-char v11, v2

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 461
    :cond_1a
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected character \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" detected."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 467
    :cond_1b
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 469
    invoke-virtual {p0}, Lorg/restlet/engine/header/PreferenceReader;->unread()V

    .line 472
    :cond_1c
    return-object v10
.end method
