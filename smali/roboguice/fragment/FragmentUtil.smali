.class public final Lroboguice/fragment/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/fragment/FragmentUtil$f;
    }
.end annotation


# static fields
.field public static final NATIVE_PACKAGE:Ljava/lang/String; = "android.app."

.field public static final SUPPORT_PACKAGE:Ljava/lang/String; = "android.support.v4.app."

.field public static hasNative:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static hasSupport:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static nativeFrag:Lroboguice/fragment/FragmentUtil$f;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static supportActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static supportFrag:Lroboguice/fragment/FragmentUtil$f;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 20
    sput-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 23
    sput-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 26
    sput-object v0, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    .line 29
    sput-boolean v2, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    .line 32
    sput-boolean v2, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    .line 46
    :try_start_0
    const-string v0, "roboguice.fragment.provided.NativeFragmentUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/fragment/FragmentUtil$f;

    sput-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 47
    sget-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lroboguice/fragment/FragmentUtil;->hasNative:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :goto_1
    :try_start_1
    const-string v0, "roboguice.fragment.support.SupportFragmentUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/fragment/FragmentUtil$f;

    sput-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 52
    const-string v0, "android.support.v4.app.FragmentActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    .line 53
    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v0, :cond_1

    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    sput-boolean v0, Lroboguice/fragment/FragmentUtil;->hasSupport:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    goto :goto_3

    .line 48
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method
