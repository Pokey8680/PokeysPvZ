.class public Lorg/restlet/engine/resource/VariantInfo;
.super Lorg/restlet/representation/Variant;
.source "VariantInfo.java"


# instance fields
.field private final annotationInfo:Lorg/restlet/engine/resource/AnnotationInfo;

.field private inputScore:F


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/engine/resource/AnnotationInfo;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Lorg/restlet/engine/resource/AnnotationInfo;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "annotationInfo"    # Lorg/restlet/engine/resource/AnnotationInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    .line 73
    iput-object p2, p0, Lorg/restlet/engine/resource/VariantInfo;->annotationInfo:Lorg/restlet/engine/resource/AnnotationInfo;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/restlet/engine/resource/VariantInfo;->inputScore:F

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Lorg/restlet/engine/resource/AnnotationInfo;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "annotationInfo"    # Lorg/restlet/engine/resource/AnnotationInfo;

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/engine/resource/AnnotationInfo;)V

    .line 87
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/resource/VariantInfo;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 88
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/resource/VariantInfo;->setEncodings(Ljava/util/List;)V

    .line 89
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/resource/VariantInfo;->setLanguages(Ljava/util/List;)V

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Lorg/restlet/representation/Variant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v4, :cond_3

    move v1, v3

    .line 103
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    if-eq p1, p0, :cond_2

    move-object v0, p1

    .line 104
    check-cast v0, Lorg/restlet/engine/resource/VariantInfo;

    .line 107
    .local v0, "otherVariant":Lorg/restlet/engine/resource/VariantInfo;
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/engine/resource/AnnotationInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v1, v3

    .line 115
    .end local v0    # "otherVariant":Lorg/restlet/engine/resource/VariantInfo;
    :cond_2
    :goto_1
    return v1

    .end local v1    # "result":Z
    :cond_3
    move v1, v2

    .line 101
    goto :goto_0

    .restart local v0    # "otherVariant":Lorg/restlet/engine/resource/VariantInfo;
    .restart local v1    # "result":Z
    :cond_4
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method public getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/restlet/engine/resource/VariantInfo;->annotationInfo:Lorg/restlet/engine/resource/AnnotationInfo;

    return-object v0
.end method

.method public getInputScore()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/restlet/engine/resource/VariantInfo;->inputScore:F

    return v0
.end method

.method public setInputScore(F)V
    .locals 0
    .param p1, "inputScore"    # F

    .prologue
    .line 144
    iput p1, p0, Lorg/restlet/engine/resource/VariantInfo;->inputScore:F

    .line 145
    return-void
.end method
