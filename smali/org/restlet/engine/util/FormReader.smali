.class public Lorg/restlet/engine/util/FormReader;
.super Ljava/lang/Object;
.source "FormReader.java"


# instance fields
.field private volatile characterSet:Lorg/restlet/data/CharacterSet;

.field private volatile decode:Z

.field private volatile separator:C

.field private volatile stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 2
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;C)V
    .locals 1
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/engine/util/FormReader;-><init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/CharacterSet;CZ)V
    .locals 2
    .param p1, "parametersString"    # Ljava/lang/String;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .param p3, "separator"    # C
    .param p4, "decode"    # Z

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean p4, p0, Lorg/restlet/engine/util/FormReader;->decode:Z

    .line 155
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    .line 157
    iput-object p2, p0, Lorg/restlet/engine/util/FormReader;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 158
    iput-char p3, p0, Lorg/restlet/engine/util/FormReader;->separator:C

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "representation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/util/FormReader;-><init>(Lorg/restlet/representation/Representation;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Z)V
    .locals 1
    .param p1, "representation"    # Lorg/restlet/representation/Representation;
    .param p2, "decode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p2, p0, Lorg/restlet/engine/util/FormReader;->decode:Z

    .line 100
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    .line 101
    const/16 v0, 0x26

    iput-char v0, p0, Lorg/restlet/engine/util/FormReader;->separator:C

    .line 103
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/util/FormReader;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    iput-object v0, p0, Lorg/restlet/engine/util/FormReader;->characterSet:Lorg/restlet/data/CharacterSet;

    goto :goto_0
.end method


# virtual methods
.method public addParameters(Lorg/restlet/util/Series;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v2, 0x1

    .line 169
    .local v2, "readNext":Z
    const/4 v1, 0x0

    .line 171
    .local v1, "param":Lorg/restlet/data/Parameter;
    iget-object v3, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 174
    :goto_0
    if-eqz v2, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p1, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to parse a form parameter. Skipping the remaining parameters."

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to close the form input stream"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public read()Lorg/restlet/data/Form;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Lorg/restlet/data/Form;

    invoke-direct {v1}, Lorg/restlet/data/Form;-><init>()V

    .line 211
    .local v1, "result":Lorg/restlet/data/Form;
    iget-object v2, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    .line 214
    .local v0, "param":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Lorg/restlet/data/Form;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v2, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 222
    .end local v0    # "param":Lorg/restlet/data/Parameter;
    :cond_1
    return-object v1
.end method

.method public readFirstParameter(Ljava/lang/String;)Lorg/restlet/data/Parameter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "result":Lorg/restlet/data/Parameter;
    iget-object v2, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    .line 239
    .local v0, "param":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    move-object v1, v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_1
    iget-object v2, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 250
    .end local v0    # "param":Lorg/restlet/data/Parameter;
    :cond_2
    return-object v1
.end method

.method public readNextParameter()Lorg/restlet/data/Parameter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 261
    const/4 v4, 0x0

    .line 263
    .local v4, "result":Lorg/restlet/data/Parameter;
    iget-object v7, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v7, :cond_9

    .line 265
    const/4 v2, 0x1

    .line 266
    .local v2, "readingName":Z
    const/4 v3, 0x0

    .line 267
    .local v3, "readingValue":Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "nameBuffer":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v6, "valueBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 271
    .local v1, "nextChar":I
    :cond_0
    :goto_0
    if-nez v4, :cond_9

    if-eq v1, v10, :cond_9

    .line 272
    iget-object v7, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 274
    if-eqz v2, :cond_6

    .line 275
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_2

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 277
    const/4 v2, 0x0

    .line 278
    const/4 v3, 0x1

    goto :goto_0

    .line 280
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Empty parameter name detected. Please check your form data"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "nameBuffer":Ljava/lang/StringBuilder;
    .end local v1    # "nextChar":I
    .end local v6    # "valueBuffer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 307
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unsupported encoding. Please contact the administrator"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "nameBuffer":Ljava/lang/StringBuilder;
    .restart local v1    # "nextChar":I
    .restart local v6    # "valueBuffer":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    iget-char v7, p0, Lorg/restlet/engine/util/FormReader;->separator:C

    if-eq v1, v7, :cond_3

    if-ne v1, v10, :cond_5

    .line 285
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 286
    const/4 v7, 0x0

    iget-boolean v8, p0, Lorg/restlet/engine/util/FormReader;->decode:Z

    iget-object v9, p0, Lorg/restlet/engine/util/FormReader;->characterSet:Lorg/restlet/data/CharacterSet;

    invoke-static {v0, v7, v8, v9}, Lorg/restlet/engine/util/FormUtils;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLorg/restlet/data/CharacterSet;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 288
    :cond_4
    if-eq v1, v10, :cond_0

    .line 291
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "Empty parameter name detected. Please check your form data"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_5
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_6
    if-eqz v3, :cond_0

    .line 298
    iget-char v7, p0, Lorg/restlet/engine/util/FormReader;->separator:C

    if-eq v1, v7, :cond_7

    if-ne v1, v10, :cond_8

    .line 299
    :cond_7
    iget-boolean v7, p0, Lorg/restlet/engine/util/FormReader;->decode:Z

    iget-object v8, p0, Lorg/restlet/engine/util/FormReader;->characterSet:Lorg/restlet/data/CharacterSet;

    invoke-static {v0, v6, v7, v8}, Lorg/restlet/engine/util/FormUtils;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLorg/restlet/data/CharacterSet;)Lorg/restlet/data/Parameter;

    move-result-object v4

    goto :goto_0

    .line 302
    :cond_8
    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "nameBuffer":Ljava/lang/StringBuilder;
    .end local v1    # "nextChar":I
    .end local v2    # "readingName":Z
    .end local v3    # "readingValue":Z
    .end local v6    # "valueBuffer":Ljava/lang/StringBuilder;
    :cond_9
    return-object v4
.end method

.method public readParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Ljava/lang/Object;
    iget-object v3, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v3, :cond_6

    .line 330
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    .local v0, "param":Lorg/restlet/data/Parameter;
    move-object v3, v1

    .line 332
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_4

    .line 333
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 334
    if-eqz v3, :cond_2

    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 339
    check-cast v2, Ljava/util/List;

    move-object v1, v3

    .line 348
    :goto_1
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 349
    sget-object v3, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    move-object v3, v1

    goto :goto_0

    .line 343
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    move-object v1, v2

    .local v1, "result":Ljava/util/List;
    goto :goto_1

    .line 351
    .end local v1    # "result":Ljava/util/List;
    :cond_1
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 355
    sget-object v1, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    .local v1, "result":Ljava/lang/Object;
    goto :goto_2

    .line 357
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_2

    .line 365
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 368
    .end local v0    # "param":Lorg/restlet/data/Parameter;
    :goto_3
    return-object v3

    .restart local v0    # "param":Lorg/restlet/data/Parameter;
    :cond_5
    move-object v1, v3

    goto :goto_2

    .end local v0    # "param":Lorg/restlet/data/Parameter;
    .local v1, "result":Ljava/lang/Object;
    :cond_6
    move-object v3, v1

    goto :goto_3
.end method

.method public readParameters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    if-eqz v3, :cond_6

    .line 385
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v1

    .line 386
    .local v1, "param":Lorg/restlet/data/Parameter;
    const/4 v0, 0x0

    .line 388
    :goto_0
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "currentValue":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 393
    const/4 v2, 0x0

    .line 395
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 397
    check-cast v2, Ljava/util/List;

    .line 406
    :goto_1
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 407
    sget-object v3, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v0    # "currentValue":Ljava/lang/Object;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lorg/restlet/engine/util/FormReader;->readNextParameter()Lorg/restlet/data/Parameter;

    move-result-object v1

    goto :goto_0

    .line 401
    .restart local v0    # "currentValue":Ljava/lang/Object;
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 413
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 415
    :cond_4
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 423
    .end local v0    # "currentValue":Ljava/lang/Object;
    :cond_5
    iget-object v3, p0, Lorg/restlet/engine/util/FormReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 425
    .end local v1    # "param":Lorg/restlet/data/Parameter;
    :cond_6
    return-void
.end method
