.class public final enum Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/libterms/Terms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TermsComplianceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/libterms/Terms$TermsComplianceLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

.field public static final enum TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

.field public static final enum TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

.field private static final synthetic a:[Lcom/chillingo/libterms/Terms$TermsComplianceLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    const-string v1, "TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 48
    new-instance v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    const-string v1, "TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 62
    new-instance v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    const-string v1, "TERMS_COMPLIANCE_LEVEL_AGE_GATED"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->a:[Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->a:[Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    invoke-virtual {v0}, [Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    return-object v0
.end method
