.class public Lorg/restlet/routing/Template;
.super Ljava/lang/Object;
.source "Template.java"


# static fields
.field public static final MODE_EQUALS:I = 0x2

.field public static final MODE_STARTS_WITH:I = 0x1


# instance fields
.field private volatile defaultVariable:Lorg/restlet/routing/Variable;

.field private volatile encodingVariables:Z

.field private volatile logger:Ljava/util/logging/Logger;

.field private volatile matchingMode:I

.field private volatile pattern:Ljava/lang/String;

.field private volatile regexPattern:Ljava/util/regex/Pattern;

.field private volatile regexVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/routing/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 277
    const/4 v2, 0x2

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "matchingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 289
    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "matchingMode"    # I
    .param p3, "defaultType"    # I
    .param p4, "defaultDefaultValue"    # Ljava/lang/String;
    .param p5, "defaultRequired"    # Z
    .param p6, "defaultFixed"    # Z

    .prologue
    .line 311
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "matchingMode"    # I
    .param p3, "defaultType"    # I
    .param p4, "defaultDefaultValue"    # Ljava/lang/String;
    .param p5, "defaultRequired"    # Z
    .param p6, "defaultFixed"    # Z
    .param p7, "encodingVariables"    # Z

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iget-object v0, p0, Lorg/restlet/routing/Template;->logger:Ljava/util/logging/Logger;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/restlet/routing/Template;->logger:Ljava/util/logging/Logger;

    .line 338
    iput-object p1, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    .line 339
    new-instance v0, Lorg/restlet/routing/Variable;

    invoke-direct {v0, p3, p4, p5, p6}, Lorg/restlet/routing/Variable;-><init>(ILjava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/restlet/routing/Template;->defaultVariable:Lorg/restlet/routing/Variable;

    .line 341
    iput p2, p0, Lorg/restlet/routing/Template;->matchingMode:I

    .line 342
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    .line 344
    iput-boolean p7, p0, Lorg/restlet/routing/Template;->encodingVariables:Z

    .line 345
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/restlet/routing/Template;->logger:Ljava/util/logging/Logger;

    goto :goto_0
.end method

.method private static appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "pattern"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .prologue
    .line 92
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    if-eqz p2, :cond_1

    .line 103
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_1
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void

    .line 99
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "pattern"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .prologue
    .line 124
    const-string v0, "((?:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    if-eqz p2, :cond_0

    .line 127
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :goto_0
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    return-void

    .line 129
    :cond_0
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRegexPattern()Ljava/util/regex/Pattern;
    .locals 12

    .prologue
    const/16 v11, 0x7d

    .line 501
    iget-object v8, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    if-nez v8, :cond_a

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v8, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    if-nez v8, :cond_9

    .line 504
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v3, "patternBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 508
    .local v5, "varBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 509
    .local v1, "inVariable":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_8

    .line 510
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 512
    .local v2, "next":C
    if-eqz v1, :cond_5

    .line 513
    invoke-static {v2}, Lorg/restlet/data/Reference;->isUnreserved(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 515
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_0
    if-ne v2, v11, :cond_4

    .line 518
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 519
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Empty pattern variables are not allowed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 549
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "varName":Ljava/lang/String;
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 527
    .local v6, "varIndex":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 531
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "varBuffer":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 536
    :cond_2
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/routing/Variable;

    .line 539
    .local v4, "var":Lorg/restlet/routing/Variable;
    if-nez v4, :cond_3

    .line 540
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getDefaultVariable()Lorg/restlet/routing/Variable;

    move-result-object v4

    .line 542
    :cond_3
    invoke-static {v4}, Lorg/restlet/routing/Template;->getVariableRegex(Lorg/restlet/routing/Variable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 573
    .end local v0    # "i":I
    .end local v1    # "inVariable":Z
    .end local v2    # "next":C
    .end local v3    # "patternBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "var":Lorg/restlet/routing/Variable;
    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    .end local v6    # "varIndex":I
    .end local v7    # "varName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 552
    .restart local v0    # "i":I
    .restart local v1    # "inVariable":Z
    .restart local v2    # "next":C
    .restart local v3    # "patternBuffer":Ljava/lang/StringBuilder;
    .restart local v5    # "varBuffer":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 557
    :cond_5
    const/16 v8, 0x7b

    if-ne v2, v8, :cond_6

    .line 558
    const/4 v1, 0x1

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "varBuffer":Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 560
    :cond_6
    if-ne v2, v11, :cond_7

    .line 561
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 565
    :cond_7
    invoke-direct {p0, v2}, Lorg/restlet/routing/Template;->quote(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 570
    .end local v2    # "next":C
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    iput-object v8, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    .line 573
    .end local v0    # "i":I
    .end local v1    # "inVariable":Z
    .end local v3    # "patternBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :cond_a
    iget-object v8, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    return-object v8
.end method

.method private getRegexVariables()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lorg/restlet/routing/Template;->regexVariables:Ljava/util/List;

    .line 589
    .local v0, "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 590
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Template;->regexVariables:Ljava/util/List;

    .line 592
    if-nez v0, :cond_0

    .line 593
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/routing/Template;->regexVariables:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 595
    .end local v1    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 597
    :cond_1
    return-object v0

    .line 595
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private static getVariableRegex(Lorg/restlet/routing/Variable;)Ljava/lang/String;
    .locals 33
    .param p0, "variable"    # Lorg/restlet/routing/Variable;

    .prologue
    .line 143
    const/16 v30, 0x0

    .line 145
    .local v30, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isFixed()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 146
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->getDefaultValue()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 240
    :goto_0
    return-object v30

    .line 149
    :cond_0
    const-string v3, "."

    .line 150
    .local v3, "ALL":Ljava/lang/String;
    const-string v4, "a-zA-Z"

    .line 151
    .local v4, "ALPHA":Ljava/lang/String;
    const-string v10, "\\d"

    .line 152
    .local v10, "DIGIT":Ljava/lang/String;
    const-string v5, "a-zA-Z\\d"

    .line 153
    .local v5, "ALPHA_DIGIT":Ljava/lang/String;
    const-string v12, "\\dABCDEFabcdef"

    .line 154
    .local v12, "HEXA":Ljava/lang/String;
    const-string v27, "a-zA-Z\\d\\-\\.\\_\\~"

    .line 155
    .local v27, "URI_UNRESERVED":Ljava/lang/String;
    const-string v23, "\\:\\/\\?\\#\\[\\]\\@"

    .line 156
    .local v23, "URI_GEN_DELIMS":Ljava/lang/String;
    const-string v26, "\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\="

    .line 157
    .local v26, "URI_SUB_DELIMS":Ljava/lang/String;
    const-string v25, "\\:\\/\\?\\#\\[\\]\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\="

    .line 158
    .local v25, "URI_RESERVED":Ljava/lang/String;
    const-string v28, "\\w"

    .line 161
    .local v28, "WORD":Ljava/lang/String;
    const-string v8, "\\r\\n"

    .line 162
    .local v8, "CRLF":Ljava/lang/String;
    const-string v9, "\\p{Cntrl}"

    .line 163
    .local v9, "CTL":Ljava/lang/String;
    const-string v13, "\\r\\n\\ \\t"

    .line 164
    .local v13, "LWS":Ljava/lang/String;
    const-string v20, "\\(\\)\\<\\>\\@\\,\\;\\:\\[\\]\"\\/\\\\?\\=\\{\\}\\ \\t"

    .line 165
    .local v20, "SEPARATOR":Ljava/lang/String;
    const-string v21, "[^\\(\\)\\<\\>\\@\\,\\;\\:\\[\\]\"\\/\\\\?\\=\\{\\}\\ \\t]"

    .line 166
    .local v21, "TOKEN":Ljava/lang/String;
    const-string v6, "[^\\p{Cntrl}][^\\(\\)]\\r\\n\\ \\t"

    .line 167
    .local v6, "COMMENT":Ljava/lang/String;
    const-string v7, "[^\\;\\(\\)]"

    .line 170
    .local v7, "COMMENT_ATTRIBUTE":Ljava/lang/String;
    const-string v15, "\\%[\\dABCDEFabcdef][\\dABCDEFabcdef]"

    .line 173
    .local v15, "PCT_ENCODED":Ljava/lang/String;
    const-string v14, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])"

    .line 175
    .local v14, "PCHAR":Ljava/lang/String;
    const-string v16, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    .line 176
    .local v16, "QUERY":Ljava/lang/String;
    const-string v11, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    .line 177
    .local v11, "FRAGMENT":Ljava/lang/String;
    const-string v24, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/"

    .line 178
    .local v24, "URI_PATH":Ljava/lang/String;
    const-string v22, "[\\:\\/\\?\\#\\[\\]\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=a-zA-Z\\d\\-\\.\\_\\~]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])"

    .line 182
    .local v22, "URI_ALL":Ljava/lang/String;
    const-string v19, "\\!\\$\\\'\\(\\)\\*\\+\\,\\;"

    .line 183
    .local v19, "QUERY_PARAM_DELIMS":Ljava/lang/String;
    const-string v18, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\\'\\(\\)\\*\\+\\,\\;\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])"

    .line 185
    .local v18, "QUERY_PARAM_CHAR":Ljava/lang/String;
    const-string v17, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\\'\\(\\)\\*\\+\\,\\;\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    .line 187
    .local v17, "QUERY_PARAM":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v29, "coreRegex":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->getType()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    .line 237
    :goto_1
    :pswitch_0
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v31, "."

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 194
    :pswitch_2
    const-string v31, "a-zA-Z"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 197
    :pswitch_3
    const-string v31, "\\d"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 200
    :pswitch_4
    const-string v31, "a-zA-Z\\d"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 203
    :pswitch_5
    const-string v31, "[\\:\\/\\?\\#\\[\\]\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=a-zA-Z\\d\\-\\.\\_\\~]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 206
    :pswitch_6
    const-string v31, "a-zA-Z\\d\\-\\.\\_\\~"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 209
    :pswitch_7
    const-string v31, "\\w"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 212
    :pswitch_8
    const-string v31, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 215
    :pswitch_9
    const-string v31, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 218
    :pswitch_a
    const-string v31, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 221
    :pswitch_b
    const-string v31, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\\'\\(\\)\\*\\+\\,\\;\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])|\\/|\\?"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 224
    :pswitch_c
    const-string v31, "[a-zA-Z\\d\\-\\.\\_\\~\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\:\\@]|(?:\\%[\\dABCDEFabcdef][\\dABCDEFabcdef])"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendGroup(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 227
    :pswitch_d
    const-string v31, "[^\\(\\)\\<\\>\\@\\,\\;\\:\\[\\]\"\\/\\\\?\\=\\{\\}\\ \\t]"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 230
    :pswitch_e
    const-string v31, "[^\\p{Cntrl}][^\\(\\)]\\r\\n\\ \\t"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 233
    :pswitch_f
    const-string v31, "[^\\;\\(\\)]"

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/routing/Variable;->isRequired()Z

    move-result v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/restlet/routing/Template;->appendClass(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_3
        :pswitch_d
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private quote(C)Ljava/lang/String;
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 817
    sparse-switch p1, :sswitch_data_0

    .line 851
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 819
    :sswitch_0
    const-string v0, "\\["

    goto :goto_0

    .line 821
    :sswitch_1
    const-string v0, "\\]"

    goto :goto_0

    .line 823
    :sswitch_2
    const-string v0, "\\."

    goto :goto_0

    .line 825
    :sswitch_3
    const-string v0, "\\\\"

    goto :goto_0

    .line 827
    :sswitch_4
    const-string v0, "\\$"

    goto :goto_0

    .line 829
    :sswitch_5
    const-string v0, "\\^"

    goto :goto_0

    .line 831
    :sswitch_6
    const-string v0, "\\?"

    goto :goto_0

    .line 833
    :sswitch_7
    const-string v0, "\\*"

    goto :goto_0

    .line 835
    :sswitch_8
    const-string v0, "\\|"

    goto :goto_0

    .line 837
    :sswitch_9
    const-string v0, "\\("

    goto :goto_0

    .line 839
    :sswitch_a
    const-string v0, "\\)"

    goto :goto_0

    .line 841
    :sswitch_b
    const-string v0, "\\:"

    goto :goto_0

    .line 843
    :sswitch_c
    const-string v0, "\\-"

    goto :goto_0

    .line 845
    :sswitch_d
    const-string v0, "\\!"

    goto :goto_0

    .line 847
    :sswitch_e
    const-string v0, "\\<"

    goto :goto_0

    .line 849
    :sswitch_f
    const-string v0, "\\>"

    goto :goto_0

    .line 817
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_d
        0x24 -> :sswitch_4
        0x28 -> :sswitch_9
        0x29 -> :sswitch_a
        0x2a -> :sswitch_7
        0x2d -> :sswitch_c
        0x2e -> :sswitch_2
        0x3a -> :sswitch_b
        0x3c -> :sswitch_e
        0x3e -> :sswitch_f
        0x3f -> :sswitch_6
        0x5b -> :sswitch_0
        0x5c -> :sswitch_3
        0x5d -> :sswitch_1
        0x5e -> :sswitch_5
        0x7c -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lorg/restlet/util/Resolver;->createResolver(Ljava/util/Map;)Lorg/restlet/util/Resolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/routing/Template;->format(Lorg/restlet/util/Resolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 370
    invoke-static {p1, p2}, Lorg/restlet/util/Resolver;->createResolver(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/util/Resolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/routing/Template;->format(Lorg/restlet/util/Resolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/restlet/util/Resolver;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Resolver",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lorg/restlet/util/Resolver;, "Lorg/restlet/util/Resolver<*>;"
    const/16 v13, 0x7d

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 384
    .local v6, "varBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 385
    .local v1, "inVariable":Z
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 386
    .local v3, "patternLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_c

    .line 387
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 389
    .local v2, "next":C
    if-eqz v1, :cond_9

    .line 390
    invoke-static {v2}, Lorg/restlet/data/Reference;->isUnreserved(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 392
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    if-ne v2, v13, :cond_8

    .line 395
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 396
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Empty pattern variables are not allowed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 437
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 400
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "varName":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lorg/restlet/util/Resolver;->resolve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 403
    .local v8, "varValue":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/routing/Variable;

    .line 406
    .local v5, "var":Lorg/restlet/routing/Variable;
    if-nez v8, :cond_3

    .line 407
    if-nez v5, :cond_2

    .line 408
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getDefaultVariable()Lorg/restlet/routing/Variable;

    move-result-object v5

    .line 411
    :cond_2
    if-eqz v5, :cond_3

    .line 412
    invoke-virtual {v5}, Lorg/restlet/routing/Variable;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    .line 416
    .end local v8    # "varValue":Ljava/lang/Object;
    :cond_3
    if-nez v8, :cond_4

    const/4 v9, 0x0

    .line 419
    .local v9, "varValueString":Ljava/lang/String;
    :goto_3
    iget-boolean v10, p0, Lorg/restlet/routing/Template;->encodingVariables:Z

    if-eqz v10, :cond_6

    .line 421
    if-eqz v5, :cond_5

    .line 422
    invoke-virtual {v5, v9}, Lorg/restlet/routing/Variable;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v6    # "varBuffer":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 416
    .end local v9    # "varValueString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 424
    .restart local v9    # "varValueString":Ljava/lang/String;
    :cond_5
    invoke-static {v9}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 427
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/restlet/routing/Variable;->isEncodingOnFormat()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 428
    invoke-static {v9}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 430
    :cond_7
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 439
    .end local v5    # "var":Lorg/restlet/routing/Variable;
    .end local v7    # "varName":Ljava/lang/String;
    .end local v9    # "varValueString":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 444
    :cond_9
    const/16 v10, 0x7b

    if-ne v2, v10, :cond_a

    .line 445
    const/4 v1, 0x1

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v6    # "varBuffer":Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 447
    :cond_a
    if-ne v2, v13, :cond_b

    .line 448
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 452
    :cond_b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 456
    .end local v2    # "next":C
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public getDefaultVariable()Lorg/restlet/routing/Variable;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/restlet/routing/Template;->defaultVariable:Lorg/restlet/routing/Variable;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/restlet/routing/Template;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getMatchingMode()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lorg/restlet/routing/Template;->matchingMode:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x7d

    .line 606
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 609
    .local v5, "varBuffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 610
    .local v1, "inVariable":Z
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "pattern":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 613
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 615
    .local v2, "next":C
    if-eqz v1, :cond_4

    .line 616
    invoke-static {v2}, Lorg/restlet/data/Reference;->isUnreserved(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 618
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    if-ne v2, v9, :cond_3

    .line 621
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 622
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Empty pattern variables are not allowed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 632
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 626
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "varBuffer":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 634
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_4
    const/16 v6, 0x7b

    if-ne v2, v6, :cond_5

    .line 640
    const/4 v1, 0x1

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "varBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v5    # "varBuffer":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 642
    :cond_5
    if-ne v2, v9, :cond_0

    .line 643
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An invalid character was detected inside a pattern variable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 650
    .end local v2    # "next":C
    :cond_6
    return-object v4
.end method

.method public declared-synchronized getVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/routing/Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEncodingVariables()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lorg/restlet/routing/Template;->encodingVariables:Z

    return v0
.end method

.method public match(Ljava/lang/String;)I
    .locals 6
    .param p1, "formattedString"    # Ljava/lang/String;

    .prologue
    .line 683
    const/4 v1, -0x1

    .line 686
    .local v1, "result":I
    if-eqz p1, :cond_0

    .line 687
    :try_start_0
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 690
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getMatchingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 703
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return v1

    .line 692
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getMatchingMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 697
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 698
    .local v2, "soe":Ljava/lang/StackOverflowError;
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StackOverflowError exception encountered while matching this string : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .param p1, "formattedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 721
    .local p2, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/routing/Template;->parse(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/util/Map;Z)I
    .locals 11
    .param p1, "formattedString"    # Ljava/lang/String;
    .param p3, "loggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p2, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 742
    const/4 v5, -0x1

    .line 744
    .local v5, "result":I
    if-eqz p1, :cond_5

    .line 746
    :try_start_0
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 747
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getMatchingMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getMatchingMode()I

    move-result v8

    if-ne v8, v3, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 752
    .local v3, "matched":Z
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 754
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 760
    .local v1, "attributeValue":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 761
    invoke-direct {p0}, Lorg/restlet/routing/Template;->getRegexVariables()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "attributeName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 762
    .restart local v0    # "attributeName":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/routing/Variable;

    .line 765
    .local v7, "var":Lorg/restlet/routing/Variable;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/restlet/routing/Variable;->isDecodingOnParse()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 766
    invoke-static {v1}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 769
    :cond_2
    if-eqz p3, :cond_3

    .line 770
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Template variable \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" matched with value \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 776
    :cond_3
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "matched":Z
    .end local v7    # "var":Lorg/restlet/routing/Variable;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 779
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v6

    .line 780
    .local v6, "soe":Ljava/lang/StackOverflowError;
    invoke-virtual {p0}, Lorg/restlet/routing/Template;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StackOverflowError exception encountered while matching this string : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 786
    .end local v6    # "soe":Ljava/lang/StackOverflowError;
    :cond_5
    return v5
.end method

.method public parse(Ljava/lang/String;Lorg/restlet/Request;)I
    .locals 2
    .param p1, "formattedString"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 804
    invoke-virtual {p2}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p2}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/routing/Template;->parse(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v0

    return v0
.end method

.method public setDefaultVariable(Lorg/restlet/routing/Variable;)V
    .locals 0
    .param p1, "defaultVariable"    # Lorg/restlet/routing/Variable;

    .prologue
    .line 861
    iput-object p1, p0, Lorg/restlet/routing/Template;->defaultVariable:Lorg/restlet/routing/Variable;

    .line 862
    return-void
.end method

.method public setEncodingVariables(Z)V
    .locals 0
    .param p1, "encodingVariables"    # Z

    .prologue
    .line 872
    iput-boolean p1, p0, Lorg/restlet/routing/Template;->encodingVariables:Z

    .line 873
    return-void
.end method

.method public setLogger(Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 882
    iput-object p1, p0, Lorg/restlet/routing/Template;->logger:Ljava/util/logging/Logger;

    .line 883
    return-void
.end method

.method public setMatchingMode(I)V
    .locals 0
    .param p1, "matchingMode"    # I

    .prologue
    .line 892
    iput p1, p0, Lorg/restlet/routing/Template;->matchingMode:I

    .line 893
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 902
    iput-object p1, p0, Lorg/restlet/routing/Template;->pattern:Ljava/lang/String;

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/routing/Template;->regexPattern:Ljava/util/regex/Pattern;

    .line 904
    return-void
.end method

.method public setVariables(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/routing/Variable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/restlet/routing/Variable;>;"
    iget-object v1, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;

    monitor-enter v1

    .line 914
    :try_start_0
    iget-object v0, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;

    if-eq p1, v0, :cond_0

    .line 915
    iget-object v0, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 917
    if-eqz p1, :cond_0

    .line 918
    iget-object v0, p0, Lorg/restlet/routing/Template;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 921
    :cond_0
    monitor-exit v1

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
