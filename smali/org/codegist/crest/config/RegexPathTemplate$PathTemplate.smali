.class final Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;
.super Ljava/lang/Object;
.source "RegexPathTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/config/RegexPathTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathTemplate"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final validator:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "validator"    # Ljava/util/regex/Pattern;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->name:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->validator:Ljava/util/regex/Pattern;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;Lorg/codegist/crest/config/RegexPathTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/regex/Pattern;
    .param p3, "x2"    # Lorg/codegist/crest/config/RegexPathTemplate$1;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->validator:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Path param %s=%s don\'t matches expected format %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->validator:Ljava/util/regex/Pattern;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method
