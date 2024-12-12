.class public Lcom/chillingo/libterms/ui/TermsUIConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 34
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v1, "Terms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get resource ID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return v0
.end method

.method public static defaultUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/TermsUIConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v3, -0xd2d2d3

    const v2, -0xeeeeef

    .line 13
    new-instance v0, Lcom/chillingo/libterms/TermsUIConfig;

    invoke-direct {v0}, Lcom/chillingo/libterms/TermsUIConfig;-><init>()V

    .line 15
    const-string v1, "def_theme_button_bg_decline"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:I

    .line 16
    const-string v1, "def_theme_button_bg_accept"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:I

    .line 17
    const-string v1, "def_theme_button_bg_links"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:I

    .line 18
    const-string v1, "def_theme_input_box"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextBackgroundImage:I

    .line 19
    const-string v1, "def_theme_background"

    invoke-static {v1, p0, p1}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:I

    .line 21
    iput v2, v0, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:I

    .line 22
    iput v2, v0, Lcom/chillingo/libterms/TermsUIConfig;->introTitleColor:I

    .line 23
    const v1, -0xcccccd

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->introTextColor:I

    .line 24
    iput v2, v0, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextColor:I

    .line 26
    iput v3, v0, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:I

    .line 27
    const v1, -0xedb900

    iput v1, v0, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:I

    .line 28
    iput v3, v0, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:I

    .line 30
    return-object v0
.end method
