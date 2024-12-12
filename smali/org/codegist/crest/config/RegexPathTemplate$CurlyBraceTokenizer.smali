.class final Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;
.super Ljava/lang/Object;
.source "RegexPathTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/config/RegexPathTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurlyBraceTokenizer"
.end annotation


# instance fields
.field private tokenIdx:I

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    .line 168
    const/4 v3, 0x1

    .line 169
    .local v3, "outside":Z
    const/4 v2, 0x0

    .line 170
    .local v2, "level":I
    const/4 v1, 0x0

    .line 172
    .local v1, "lastIdx":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3

    .line 174
    if-eqz v3, :cond_2

    .line 175
    if-ge v1, v0, :cond_0

    .line 176
    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    move v1, v0

    .line 179
    const/4 v3, 0x0

    .line 172
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 184
    if-lez v2, :cond_4

    .line 185
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 187
    :cond_4
    if-ge v1, v0, :cond_5

    .line 188
    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 191
    const/4 v3, 0x1

    goto :goto_1

    .line 195
    :cond_6
    if-ge v1, v0, :cond_7

    .line 196
    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_7
    return-void
.end method

.method public static insideBraces(Ljava/lang/String;)Z
    .locals 3
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static stripBraces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokenIdx:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokens:Ljava/util/List;

    iget v1, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokenIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->tokenIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
