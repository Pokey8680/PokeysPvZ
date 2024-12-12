.class public final Lcom/chillingo/libterms/TermsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;)Lcom/chillingo/libterms/Terms;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p2, "preCOPPA"    # Z
    .param p3, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p4, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;

    .prologue
    .line 34
    new-instance v0, Lcom/chillingo/libterms/TermsImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/libterms/TermsImpl;-><init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)Lcom/chillingo/libterms/Terms;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p2, "preCOPPA"    # Z
    .param p3, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p4, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p5, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/chillingo/libterms/TermsImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/libterms/TermsImpl;-><init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    return-object v0
.end method
