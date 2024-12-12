.class public final Lorg/codegist/crest/util/Pairs;
.super Ljava/lang/Object;
.source "Pairs.java"


# static fields
.field private static final AMP:Ljava/util/regex/Pattern;

.field private static final EQUAL:Ljava/util/regex/Pattern;

.field private static final PAIR_NAME_VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/util/Pairs;->AMP:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/util/Pairs;->EQUAL:Ljava/util/regex/Pattern;

    .line 292
    new-instance v0, Lorg/codegist/crest/util/Pairs$1;

    invoke-direct {v0}, Lorg/codegist/crest/util/Pairs$1;-><init>()V

    sput-object v0, Lorg/codegist/crest/util/Pairs;->PAIR_NAME_VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static fromUrlEncoded(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "urlEncoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    sget-object v7, Lorg/codegist/crest/util/Pairs;->AMP:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "split":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 103
    .local v4, "param":Ljava/lang/String;
    sget-object v7, Lorg/codegist/crest/util/Pairs;->EQUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "paramSplit":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v7, v8}, Lorg/codegist/crest/util/Pairs;->toPreEncodedPair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "paramSplit":[Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 2
    .param p1, "pairSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v1, 0x0

    .line 162
    const/16 v0, 0x3d

    invoke-static {p0, p1, v0, v1, v1}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/Iterator;CCZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;CC)Ljava/lang/String;
    .locals 1
    .param p1, "pairSep"    # C
    .param p2, "nameValSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CC)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, p2, v0, v0}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/Iterator;CCZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;CCZZ)Ljava/lang/String;
    .locals 6
    .param p1, "pairSep"    # C
    .param p2, "nameValSep"    # C
    .param p3, "quoteName"    # Z
    .param p4, "quoteVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CCZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    new-instance v0, Lorg/codegist/common/io/StringBuilderWriter;

    invoke-direct {v0}, Lorg/codegist/common/io/StringBuilderWriter;-><init>()V

    .local v0, "sw":Ljava/io/Writer;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 188
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/Iterator;CCZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static join(Ljava/util/List;C)Ljava/lang/String;
    .locals 2
    .param p1, "pairSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v1, 0x0

    .line 128
    const/16 v0, 0x3d

    invoke-static {p0, p1, v0, v1, v1}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;CCZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;CC)Ljava/lang/String;
    .locals 1
    .param p1, "pairSep"    # C
    .param p2, "nameValSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CC)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v0, 0x0

    .line 139
    invoke-static {p0, p1, p2, v0, v0}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;CCZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;CCZZ)Ljava/lang/String;
    .locals 1
    .param p1, "pairSep"    # C
    .param p2, "nameValSep"    # C
    .param p3, "quoteName"    # Z
    .param p4, "quoteVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CCZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/Iterator;CCZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/io/Writer;Ljava/util/Iterator;C)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;C)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v4, 0x0

    .line 240
    const/16 v3, 0x3d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/Iterator;CCZZ)V

    .line 241
    return-void
.end method

.method public static join(Ljava/io/Writer;Ljava/util/Iterator;CC)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .param p3, "nameValSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CC)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v4, 0x0

    .line 252
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/Iterator;CCZZ)V

    .line 253
    return-void
.end method

.method public static join(Ljava/io/Writer;Ljava/util/Iterator;CCZZ)V
    .locals 5
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .param p3, "nameValSep"    # C
    .param p4, "quoteName"    # Z
    .param p5, "quoteVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CCZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/16 v4, 0x22

    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "first":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/param/EncodedPair;

    .line 269
    .local v1, "httpEncodedPair":Lorg/codegist/crest/param/EncodedPair;
    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 273
    :cond_0
    if-eqz p4, :cond_1

    .line 274
    invoke-virtual {p0, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 279
    :goto_1
    invoke-virtual {p0, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 281
    if-eqz p5, :cond_2

    .line 282
    invoke-virtual {p0, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 287
    :goto_2
    const/4 v0, 0x0

    .line 288
    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_1

    .line 284
    :cond_2
    invoke-interface {v1}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_2

    .line 289
    .end local v1    # "httpEncodedPair":Lorg/codegist/crest/param/EncodedPair;
    :cond_3
    return-void
.end method

.method public static join(Ljava/io/Writer;Ljava/util/List;C)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;C)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v4, 0x0

    .line 203
    const/16 v3, 0x3d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/List;CCZZ)V

    .line 204
    return-void
.end method

.method public static join(Ljava/io/Writer;Ljava/util/List;CC)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .param p3, "nameValSep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CC)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v4, 0x0

    .line 215
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/List;CCZZ)V

    .line 216
    return-void
.end method

.method public static join(Ljava/io/Writer;Ljava/util/List;CCZZ)V
    .locals 6
    .param p0, "writer"    # Ljava/io/Writer;
    .param p2, "pairSep"    # C
    .param p3, "nameValSep"    # C
    .param p4, "quoteName"    # Z
    .param p5, "quoteVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;CCZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/Iterator;CCZZ)V

    .line 230
    return-void
.end method

.method public static sortByNameAndValues(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<+Lorg/codegist/crest/param/EncodedPair;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    sget-object v1, Lorg/codegist/crest/util/Pairs;->PAIR_NAME_VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    return-object v0
.end method

.method public static toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/param/EncodedPair;
    .locals 1
    .param p0, "nameToEncode"    # Ljava/lang/String;
    .param p1, "valueToEncode"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/codegist/crest/util/Pairs;->toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v0

    return-object v0
.end method

.method public static toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/codegist/crest/param/EncodedPair;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "encoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p3, :cond_0

    .line 85
    move-object v0, p0

    .line 86
    .local v0, "nameEncoded":Ljava/lang/String;
    move-object v1, p1

    .line 91
    .local v1, "valueEncoded":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/codegist/crest/param/SimpleEncodedPair;

    invoke-direct {v2, v0, v1}, Lorg/codegist/crest/param/SimpleEncodedPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 88
    .end local v0    # "nameEncoded":Ljava/lang/String;
    .end local v1    # "valueEncoded":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Lorg/codegist/common/net/Urls;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "nameEncoded":Ljava/lang/String;
    invoke-static {p1, p2}, Lorg/codegist/common/net/Urls;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "valueEncoded":Ljava/lang/String;
    goto :goto_0
.end method

.method public static toPreEncodedPair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lorg/codegist/crest/param/SimpleEncodedPair;

    invoke-direct {v0, p0, p1}, Lorg/codegist/crest/param/SimpleEncodedPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
