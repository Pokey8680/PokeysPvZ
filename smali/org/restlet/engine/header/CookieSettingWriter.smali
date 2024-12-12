.class public Lorg/restlet/engine/header/CookieSettingWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "CookieSettingWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/CookieSetting;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "cookieSettings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CookieSetting;>;"
    new-instance v0, Lorg/restlet/engine/header/CookieSettingWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/CookieSettingWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/restlet/data/CookieSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "cookieSetting"    # Lorg/restlet/data/CookieSetting;

    .prologue
    .line 57
    new-instance v0, Lorg/restlet/engine/header/CookieSettingWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/CookieSettingWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Lorg/restlet/data/CookieSetting;)Lorg/restlet/engine/header/CookieSettingWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/CookieSettingWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Lorg/restlet/data/CookieSetting;)Lorg/restlet/engine/header/CookieSettingWriter;
    .locals 20
    .param p1, "cookieSetting"    # Lorg/restlet/data/CookieSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getName()Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "value":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getVersion()I

    move-result v15

    .line 78
    .local v15, "version":I
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    .line 79
    :cond_0
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Can\'t write cookie. Invalid name detected"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 83
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v16

    const/16 v17, 0x3d

    invoke-virtual/range {v16 .. v17}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 86
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    .line 91
    :cond_2
    if-lez v15, :cond_3

    .line 92
    const-string v16, "; Version="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 93
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    .line 97
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    .line 100
    const-string v16, "; Path="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 102
    if-nez v15, :cond_a

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 110
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getMaxAge()I

    move-result v7

    .line 112
    .local v7, "maxAge":I
    if-ltz v7, :cond_c

    .line 113
    if-nez v15, :cond_b

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 115
    .local v4, "currentTime":J
    int-to-long v0, v7

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v10, v16, v18

    .line 116
    .local v10, "maxTime":J
    add-long v8, v4, v10

    .line 117
    .local v8, "expiresTime":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 119
    .local v6, "expires":Ljava/util/Date;
    const-string v16, "; Expires="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 120
    sget-object v16, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    .line 137
    .end local v4    # "currentTime":J
    .end local v6    # "expires":Ljava/util/Date;
    .end local v8    # "expiresTime":J
    .end local v10    # "maxTime":J
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "domain":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_6

    .line 140
    const-string v16, "; Domain="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    .line 145
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->isSecure()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 146
    const-string v16, "; Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 150
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->isAccessRestricted()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 151
    const-string v16, "; HttpOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 155
    :cond_8
    if-lez v15, :cond_9

    .line 156
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getComment()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "comment":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_9

    .line 159
    const-string v16, "; Comment="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    .line 164
    .end local v2    # "comment":Ljava/lang/String;
    :cond_9
    return-object p0

    .line 105
    .end local v3    # "domain":Ljava/lang/String;
    .end local v7    # "maxAge":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/restlet/engine/header/CookieSettingWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    goto/16 :goto_0

    .line 123
    .restart local v7    # "maxAge":I
    :cond_b
    const-string v16, "; Max-Age="

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/CookieSetting;->getMaxAge()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/restlet/engine/header/CookieSettingWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;

    goto :goto_1

    .line 127
    :cond_c
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    if-lez v15, :cond_5

    .line 130
    const-string v16, "; Discard"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto/16 :goto_1
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lorg/restlet/data/CookieSetting;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Lorg/restlet/data/CookieSetting;)Lorg/restlet/engine/header/CookieSettingWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieSettingWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/CookieSettingWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 183
    :goto_0
    return-object p0

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CookieSettingWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method
