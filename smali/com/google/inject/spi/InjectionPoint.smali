.class public final Lcom/google/inject/spi/InjectionPoint;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/spi/InjectionPoint$Signature;,
        Lcom/google/inject/spi/InjectionPoint$Pair;,
        Lcom/google/inject/spi/InjectionPoint$OverrideIndex;,
        Lcom/google/inject/spi/InjectionPoint$Position;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMembers;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMethod;,
        Lcom/google/inject/spi/InjectionPoint$InjectableField;,
        Lcom/google/inject/spi/InjectionPoint$InjectableMember;
    }
.end annotation


# static fields
.field private static filter:Lcom/google/inject/HierarchyTraversalFilter;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final declaringType:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation
.end field

.field private final dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final member:Ljava/lang/reflect/Member;

.field private final optional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    .line 65
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    sput-object v0, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "declaringType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    .local p2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 82
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 84
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Z)V
    .locals 6
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "declaringType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 90
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 91
    iput-boolean p3, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 95
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    new-instance v2, Lcom/google/inject/internal/Errors;

    invoke-direct {v2, p2}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 96
    .local v2, "errors":Lcom/google/inject/internal/Errors;
    const/4 v3, 0x0

    .line 98
    .local v3, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/inject/TypeLiteral;->getFieldType(Ljava/lang/reflect/Field;)Lcom/google/inject/TypeLiteral;

    move-result-object v4

    invoke-static {v4, p2, v0, v2}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 104
    :goto_0
    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 106
    invoke-static {v0}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object v4

    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 108
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lcom/google/inject/ConfigurationException;
    invoke-virtual {v1}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 101
    .end local v1    # "e":Lcom/google/inject/ConfigurationException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Z)V
    .locals 1
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "declaringType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 75
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    .line 76
    iput-boolean p3, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 78
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Method;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/inject/spi/InjectionPoint;->overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method private static checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z
    .locals 4
    .param p0, "member"    # Ljava/lang/reflect/Member;
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    const/4 v2, 0x0

    .line 398
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 400
    .local v0, "misplacedBindingAnnotation":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    move v1, v2

    .line 416
    :goto_0
    return v1

    .line 406
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 408
    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 409
    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 415
    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/google/inject/internal/Errors;->misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/Errors;

    .line 416
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V
    .locals 19
    .param p1, "statics"    # Z
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "injectableMembers"    # Lcom/google/inject/spi/InjectionPoint$InjectableMembers;
    .param p4, "overrideIndex"    # Lcom/google/inject/spi/InjectionPoint$OverrideIndex;
    .param p5, "filter"    # Lcom/google/inject/HierarchyTraversalFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;Z",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/spi/InjectionPoint$InjectableMembers;",
            "Lcom/google/inject/spi/InjectionPoint$OverrideIndex;",
            "Lcom/google/inject/HierarchyTraversalFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v17

    .line 719
    .local v17, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/inject/spi/InjectionPoint;->isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    :cond_0
    return-void

    .line 724
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    .line 725
    .local v16, "parentRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/inject/spi/InjectionPoint;->isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/inject/spi/InjectionPoint;->computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V

    .line 727
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/google/inject/spi/InjectionPoint$Position;

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 732
    :goto_0
    const-class v2, Lcom/google/inject/Inject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v8

    .line 733
    .local v8, "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    if-eqz v8, :cond_5

    .line 734
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Field;

    .line 736
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 737
    invoke-static {v11}, Lcom/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 738
    .local v10, "atInject":Ljava/lang/annotation/Annotation;
    if-eqz v10, :cond_2

    .line 740
    new-instance v13, Lcom/google/inject/spi/InjectionPoint$InjectableField;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v10}, Lcom/google/inject/spi/InjectionPoint$InjectableField;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 741
    .local v13, "injectableField":Lcom/google/inject/spi/InjectionPoint$InjectableField;
    iget-boolean v2, v13, Lcom/google/inject/spi/InjectionPoint$InjectableField;->jsr330:Z

    if-eqz v2, :cond_3

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/inject/internal/Errors;->cannotInjectFinalField(Ljava/lang/reflect/Field;)Lcom/google/inject/internal/Errors;

    .line 744
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V

    goto :goto_1

    .line 729
    .end local v8    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .end local v10    # "atInject":Ljava/lang/annotation/Annotation;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "injectableField":Lcom/google/inject/spi/InjectionPoint$InjectableField;
    :cond_4
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/google/inject/spi/InjectionPoint$Position;

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    goto :goto_0

    .line 750
    .restart local v8    # "allFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    :cond_5
    const-class v2, Lcom/google/inject/Inject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v9

    .line 751
    .local v9, "allMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    if-eqz v9, :cond_0

    .line 752
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    .line 753
    .local v15, "method":Ljava/lang/reflect/Method;
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/google/inject/spi/InjectionPoint;->isEligibleForInjection(Ljava/lang/reflect/Method;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 754
    invoke-static {v15}, Lcom/google/inject/spi/InjectionPoint;->getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 755
    .restart local v10    # "atInject":Ljava/lang/annotation/Annotation;
    if-eqz v10, :cond_a

    .line 756
    new-instance v14, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v10}, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 758
    .local v14, "injectableMethod":Lcom/google/inject/spi/InjectionPoint$InjectableMethod;
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/google/inject/spi/InjectionPoint;->isValidMethod(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/google/inject/internal/Errors;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 760
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2, v14}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v18

    .line 761
    .local v18, "removed":Z
    if-eqz v18, :cond_6

    .line 762
    sget-object v2, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Method: {0} is not a valid injectable method (because it either has misplaced binding annotations or specifies type parameters) but is overriding a method that is valid. Because it is not valid, the method will not be injected. To fix this, make the method a valid injectable method."

    invoke-virtual {v2, v3, v4, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 770
    .end local v18    # "removed":Z
    :cond_8
    if-eqz p1, :cond_9

    .line 771
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V

    goto :goto_2

    .line 775
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2, v14}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    .line 776
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;)V

    goto :goto_2

    .line 779
    .end local v14    # "injectableMethod":Lcom/google/inject/spi/InjectionPoint$InjectableMethod;
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2, v3}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->removeIfOverriddenBy(Ljava/lang/reflect/Method;ZLcom/google/inject/spi/InjectionPoint$InjectableMethod;)Z

    move-result v18

    .line 780
    .restart local v18    # "removed":Z
    if-eqz v18, :cond_6

    .line 781
    sget-object v2, Lcom/google/inject/spi/InjectionPoint;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Method: {0} is not annotated with @Inject but is overriding a method that is annotated with @javax.inject.Inject.  Because it is not annotated with @Inject, the method will not be injected. To fix this, annotate the method with @Inject."

    invoke-virtual {v2, v3, v4, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;",
            "Lcom/google/inject/TypeLiteral",
            "<+TT;>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TT;>;"
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/inject/internal/Errors;->constructorNotDefinedByType(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 232
    :cond_0
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p1, p0}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v10}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 246
    .local v9, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/google/inject/internal/Errors;

    invoke-direct {v2, v9}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 248
    .local v2, "errors":Lcom/google/inject/internal/Errors;
    sget-object v10, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v10}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "injectableConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v10, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v11, Lcom/google/inject/Inject;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForConstructors(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 251
    sget-object v10, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v11, Lcom/google/inject/Inject;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/inject/HierarchyTraversalFilter;->getAllConstructors(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 253
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v10, Lcom/google/inject/Inject;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/inject/Inject;

    .line 254
    .local v3, "guiceInject":Lcom/google/inject/Inject;
    if-nez v3, :cond_3

    .line 255
    const-class v10, Ljavax/inject/Inject;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/inject/Inject;

    .line 256
    .local v6, "javaxInject":Ljavax/inject/Inject;
    if-eqz v6, :cond_0

    .line 259
    const/4 v8, 0x0

    .line 264
    .end local v6    # "javaxInject":Ljavax/inject/Inject;
    .local v8, "optional":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 265
    invoke-virtual {v2, v0}, Lcom/google/inject/internal/Errors;->optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/internal/Errors;

    .line 268
    :cond_1
    if-eqz v5, :cond_2

    .line 269
    invoke-virtual {v2, v9}, Lcom/google/inject/internal/Errors;->tooManyConstructors(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 272
    :cond_2
    move-object v5, v0

    .line 273
    invoke-static {v5, v2}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    goto :goto_0

    .line 261
    .end local v8    # "optional":Z
    :cond_3
    invoke-interface {v3}, Lcom/google/inject/Inject;->optional()Z

    move-result v8

    .restart local v8    # "optional":Z
    goto :goto_1

    .line 277
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "guiceInject":Lcom/google/inject/Inject;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "optional":Z
    :cond_4
    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 279
    if-eqz v5, :cond_5

    .line 280
    new-instance v10, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v10, p0, v5}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    .line 295
    :goto_2
    return-object v10

    .line 285
    :cond_5
    const/4 v10, 0x0

    :try_start_0
    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 288
    .local v7, "noArgConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 290
    invoke-virtual {v2, v9}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 291
    new-instance v10, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v7    # "noArgConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2, v9}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 298
    new-instance v10, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v10

    .line 294
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v7    # "noArgConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    :try_start_1
    invoke-static {v7, v2}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Z

    .line 295
    new-instance v10, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v10, p0, v7}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static forConstructorOf(Ljava/lang/Class;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public static forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 372
    .local v0, "errors":Lcom/google/inject/internal/Errors;
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object v1

    .line 373
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v1}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v2

    throw v2

    .line 376
    :cond_0
    return-object v1
.end method

.method public static forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 10
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p3, "paramterAnnotations"    # [[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    new-instance v3, Lcom/google/inject/internal/Errors;

    invoke-direct {v3, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 113
    .local v3, "errors":Lcom/google/inject/internal/Errors;
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "annotationsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[Ljava/lang/annotation/Annotation;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Dependency<*>;>;"
    const/4 v5, 0x0

    .line 118
    .local v5, "index":I
    invoke-virtual {p2, p1}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/inject/TypeLiteral;

    .line 120
    .local v8, "parameterType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/annotation/Annotation;

    .line 121
    .local v7, "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    invoke-static {v8, p1, v7, v3}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v6

    .line 122
    .local v6, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-static {v7}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v9

    invoke-direct {p0, v6, v9, v5}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    .end local v6    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    .end local v7    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Lcom/google/inject/ConfigurationException;
    invoke-virtual {v2}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 126
    .end local v2    # "e":Lcom/google/inject/ConfigurationException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v2}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 131
    .end local v2    # "e":Lcom/google/inject/internal/ErrorsException;
    .end local v8    # "parameterType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    :cond_0
    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 132
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v9

    return-object v9
.end method

.method public static forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 331
    .local v0, "errors":Lcom/google/inject/internal/Errors;
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->staticInjectionOnInterface(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 333
    const/4 v1, 0x0

    .line 338
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v1}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v2

    throw v2

    .line 335
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2, v0}, Lcom/google/inject/spi/InjectionPoint;->getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;

    move-result-object v1

    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    goto :goto_0

    .line 341
    :cond_1
    return-object v1
.end method

.method public static forStaticMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static getAtInject(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p0, "member"    # Ljava/lang/reflect/AnnotatedElement;

    .prologue
    .line 485
    const-class v1, Ljavax/inject/Inject;

    invoke-interface {p0, v1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 486
    .local v0, "a":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    const-class v1, Lcom/google/inject/Inject;

    invoke-interface {p0, v1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v0
.end method

.method private static getInjectionPoints(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;)Ljava/util/Set;
    .locals 9
    .param p1, "statics"    # Z
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;Z",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    new-instance v3, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;

    invoke-direct {v3}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;-><init>()V

    .line 683
    .local v3, "injectableMembers":Lcom/google/inject/spi/InjectionPoint$InjectableMembers;
    new-instance v4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;

    invoke-direct {v4, v3}, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;-><init>(Lcom/google/inject/spi/InjectionPoint$InjectableMembers;)V

    .line 684
    .local v4, "overrideIndex":Lcom/google/inject/spi/InjectionPoint$OverrideIndex;
    sget-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/google/inject/spi/InjectionPoint$Position;

    iput-object v0, v4, Lcom/google/inject/spi/InjectionPoint$OverrideIndex;->position:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 686
    sget-object v0, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 687
    sget-object v5, Lcom/google/inject/spi/InjectionPoint;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/inject/spi/InjectionPoint;->computeInjectableMembers(Lcom/google/inject/TypeLiteral;ZLcom/google/inject/internal/Errors;Lcom/google/inject/spi/InjectionPoint$InjectableMembers;Lcom/google/inject/spi/InjectionPoint$OverrideIndex;Lcom/google/inject/HierarchyTraversalFilter;)V

    .line 689
    invoke-virtual {v3}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    .line 693
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v6

    .line 694
    .local v6, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<Lcom/google/inject/spi/InjectionPoint;>;"
    iget-object v8, v3, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .local v8, "im":Lcom/google/inject/spi/InjectionPoint$InjectableMember;
    :goto_1
    if-eqz v8, :cond_2

    .line 697
    :try_start_0
    invoke-virtual {v8}, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->toInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_1
    :goto_2
    iget-object v8, v8, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_1

    .line 698
    :catch_0
    move-exception v7

    .line 699
    .local v7, "ignorable":Lcom/google/inject/ConfigurationException;
    iget-boolean v0, v8, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->optional:Z

    if-nez v0, :cond_1

    .line 700
    invoke-virtual {v7}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    goto :goto_2

    .line 704
    .end local v7    # "ignorable":Lcom/google/inject/ConfigurationException;
    :cond_2
    invoke-virtual {v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method private static hierarchyFor(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v1, "hierarchy":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/TypeLiteral<*>;>;"
    move-object v0, p0

    .line 842
    .local v0, "current":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 843
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    goto :goto_0

    .line 846
    :cond_0
    return-object v1
.end method

.method private static isEligibleForInjection(Ljava/lang/reflect/Method;Z)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "statics"    # Z

    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMethod(Lcom/google/inject/spi/InjectionPoint$InjectableMethod;Lcom/google/inject/internal/Errors;)Z
    .locals 3
    .param p0, "injectableMethod"    # Lcom/google/inject/spi/InjectionPoint$InjectableMethod;
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 824
    const/4 v1, 0x1

    .line 825
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->jsr330:Z

    if-eqz v2, :cond_1

    .line 826
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMethod;->method:Ljava/lang/reflect/Method;

    .line 827
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->cannotInjectAbstractMethod(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;

    .line 829
    const/4 v1, 0x0

    .line 831
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 832
    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->cannotInjectMethodWithTypeParameters(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;

    .line 833
    const/4 v1, 0x0

    .line 836
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return v1
.end method

.method private static isWorthScanning(Lcom/google/inject/HierarchyTraversalFilter;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "filter"    # Lcom/google/inject/HierarchyTraversalFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/HierarchyTraversalFilter;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 793
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/google/inject/Inject;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForFields(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    .line 795
    .local v0, "worthScanning":Z
    return v0
.end method

.method private newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;
    .locals 1
    .param p2, "allowsNull"    # Z
    .param p3, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;ZI)",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/spi/Dependency;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/inject/spi/Dependency;-><init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V

    return-object v0
.end method

.method private static overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/reflect/Method;
    .param p1, "b"    # Ljava/lang/reflect/Method;

    .prologue
    .line 855
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 856
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    :cond_0
    const/4 v1, 0x1

    .line 863
    :goto_0
    return v1

    .line 859
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    const/4 v1, 0x0

    goto :goto_0

    .line 863
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 190
    instance-of v0, p1, Lcom/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    move-object v0, p1

    check-cast v0, Lcom/google/inject/spi/InjectionPoint;

    iget-object v0, v0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    check-cast p1, Lcom/google/inject/spi/InjectionPoint;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Lcom/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeclaringType()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/spi/InjectionPoint;->declaringType:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    return v0
.end method

.method public isToolable()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Lcom/google/inject/spi/Toolable;

    invoke-interface {v0, v1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/google/inject/internal/util/Classes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
