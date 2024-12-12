.class public Lroboguice/inject/PreferenceListener;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field protected preferencesForInjection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Landroid/app/Application;)V
    .locals 1
    .param p2, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "contextProvider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    .line 50
    iput-object p2, p0, Lroboguice/inject/PreferenceListener;->application:Landroid/app/Application;

    .line 51
    return-void
.end method

.method private isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/inject/InjectPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TI;>;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TI;>;"
    .local p2, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    iget-object v4, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v4, :cond_1

    .line 55
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v4

    iput-object v4, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-direct {p0, v1}, Lroboguice/inject/PreferenceListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    iget-object v4, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v5, Lroboguice/inject/InjectPreference;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 63
    .local v0, "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    if-eqz v0, :cond_3

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 65
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v4, Lroboguice/inject/InjectPreference;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Preferences may not be statically injected"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lroboguice/inject/PreferenceListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v4}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    goto :goto_0

    .line 69
    .restart local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v5, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    iget-object v6, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    const-class v4, Lroboguice/inject/InjectPreference;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lroboguice/inject/InjectPreference;

    invoke-direct {v5, p0, v2, v6, v4}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;-><init>(Lroboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectPreference;)V

    invoke-interface {p2, v5}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    goto :goto_2

    .line 73
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 74
    goto :goto_1

    .line 75
    .end local v0    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :cond_4
    return-void
.end method

.method public injectPreferenceViews()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 87
    iget-object v1, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    invoke-virtual {v1}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->reallyInjectMembers()V

    .line 86
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public registerPreferenceForInjection(Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "injector":Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;, "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector<*>;"
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
