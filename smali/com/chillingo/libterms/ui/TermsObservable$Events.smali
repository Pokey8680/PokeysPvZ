.class public final enum Lcom/chillingo/libterms/ui/TermsObservable$Events;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/libterms/ui/TermsObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/libterms/ui/TermsObservable$Events;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

.field private static final synthetic a:[Lcom/chillingo/libterms/ui/TermsObservable$Events;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;

    const-string v1, "TERMS_DOWNLOAD_FINISHED"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/libterms/ui/TermsObservable$Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chillingo/libterms/ui/TermsObservable$Events;

    sget-object v1, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    aput-object v1, v0, v2

    sput-object v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;->a:[Lcom/chillingo/libterms/ui/TermsObservable$Events;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/libterms/ui/TermsObservable$Events;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/libterms/ui/TermsObservable$Events;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/chillingo/libterms/ui/TermsObservable$Events;->a:[Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-virtual {v0}, [Lcom/chillingo/libterms/ui/TermsObservable$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/libterms/ui/TermsObservable$Events;

    return-object v0
.end method
