.class final Lcom/squareup/moshi/ClassJsonAdapter$1;
.super Ljava/lang/Object;
.source "ClassJsonAdapter.java"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/ClassJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFieldBindings(Lcom/squareup/moshi/Moshi;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 17
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<",
            "*>;>;)V"
        }
    .end annotation

    .line 82
    .local p3, "fieldBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;>;"
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v0, v1}, Lcom/squareup/moshi/ClassJsonAdapter$1;->isPlatformType(Ljava/lang/Class;)Z

    move-result v2

    .line 84
    .local v2, "platformType":Z
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 85
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-direct {v0, v2, v7}, Lcom/squareup/moshi/ClassJsonAdapter$1;->includeField(ZI)Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v10, p1

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-static {v8, v1, v7}, Lcom/squareup/moshi/Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 89
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    invoke-static {v6}, Lcom/squareup/moshi/Util;->jsonAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Set;

    move-result-object v9

    .line 90
    .local v9, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    move-object/from16 v10, p1

    invoke-virtual {v10, v7, v9}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v11

    .line 93
    .local v11, "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    const-class v12, Lcom/squareup/moshi/Json;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/squareup/moshi/Json;

    .line 97
    .local v12, "jsonAnnotation":Lcom/squareup/moshi/Json;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lcom/squareup/moshi/Json;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "name":Ljava/lang/String;
    :goto_1
    new-instance v14, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    invoke-direct {v14, v13, v6, v11}, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/squareup/moshi/JsonAdapter;)V

    .line 99
    .local v14, "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<Ljava/lang/Object;>;"
    move-object/from16 v15, p3

    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    .line 100
    .local v0, "replaced":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    if-nez v0, :cond_2

    .line 84
    .end local v0    # "replaced":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    .end local v11    # "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    .end local v12    # "jsonAnnotation":Lcom/squareup/moshi/Json;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<Ljava/lang/Object;>;"
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 101
    .restart local v0    # "replaced":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    .restart local v11    # "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    .restart local v12    # "jsonAnnotation":Lcom/squareup/moshi/Json;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<Ljava/lang/Object;>;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting fields:\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v0    # "replaced":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    .end local v11    # "adapter":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<Ljava/lang/Object;>;"
    .end local v12    # "jsonAnnotation":Lcom/squareup/moshi/Json;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "fieldBinding":Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;, "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    return-void
.end method

.method private includeField(ZI)Z
    .locals 2
    .param p1, "platformType"    # Z
    .param p2, "modifiers"    # I

    .line 123
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 123
    :cond_3
    :goto_0
    return v1
.end method

.method private isPlatformType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 113
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "name":Ljava/lang/String;
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string v1, "kotlin."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const-string v1, "scala."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 114
    :goto_1
    return v1
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation

    .line 47
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    invoke-direct {p0, v0}, Lcom/squareup/moshi/ClassJsonAdapter$1;->isPlatformType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/squareup/moshi/Types;->isAllowedPlatformType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " annotated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " requires explicit JsonAdapter to be registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot serialize anonymous class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot serialize non-static nested class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 71
    invoke-static {v0}, Lcom/squareup/moshi/ClassFactory;->get(Ljava/lang/Class;)Lcom/squareup/moshi/ClassFactory;

    move-result-object v1

    .line 72
    .local v1, "classFactory":Lcom/squareup/moshi/ClassFactory;, "Lcom/squareup/moshi/ClassFactory<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 73
    .local v2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;>;"
    move-object v3, p1

    .local v3, "t":Ljava/lang/reflect/Type;
    :goto_1
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_6

    .line 74
    invoke-direct {p0, p3, v3, v2}, Lcom/squareup/moshi/ClassJsonAdapter$1;->createFieldBindings(Lcom/squareup/moshi/Moshi;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 73
    invoke-static {v3}, Lcom/squareup/moshi/Types;->getGenericSuperclass(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_1

    .line 76
    .end local v3    # "t":Ljava/lang/reflect/Type;
    :cond_6
    new-instance v3, Lcom/squareup/moshi/ClassJsonAdapter;

    invoke-direct {v3, v1, v2}, Lcom/squareup/moshi/ClassJsonAdapter;-><init>(Lcom/squareup/moshi/ClassFactory;Ljava/util/Map;)V

    invoke-virtual {v3}, Lcom/squareup/moshi/ClassJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v3

    return-object v3

    .line 68
    .end local v1    # "classFactory":Lcom/squareup/moshi/ClassFactory;, "Lcom/squareup/moshi/ClassFactory<Ljava/lang/Object;>;"
    .end local v2    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<*>;>;"
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot serialize abstract class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_8
    :goto_2
    return-object v2
.end method
