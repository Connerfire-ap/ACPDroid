.class public final Lcom/squareup/leakcanary/HahaHelper;
.super Ljava/lang/Object;
.source "HahaHelper.java"


# static fields
.field private static final WRAPPER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Double;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 15
    .param p0, "stringObject"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 79
    move-object v5, p0

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    .line 80
    .local v5, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v5}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v9

    .line 82
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v10, "count"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 83
    .local v3, "count":Ljava/lang/Integer;
    const-string v10, "count"

    invoke-static {v3, v10}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_0

    .line 85
    const-string v10, ""

    .line 118
    :goto_0
    return-object v10

    .line 88
    :cond_0
    const-string v10, "value"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 89
    .local v8, "value":Ljava/lang/Object;
    const-string v10, "value"

    invoke-static {v8, v10}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static {v8}, Lcom/squareup/leakcanary/HahaHelper;->isCharArray(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v8

    .line 94
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 96
    .local v0, "array":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 101
    .local v6, "offset":Ljava/lang/Integer;
    const-string v10, "offset"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->hasField(Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 102
    const-string v10, "offset"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "offset":Ljava/lang/Integer;
    check-cast v6, Ljava/lang/Integer;

    .line 103
    .restart local v6    # "offset":Ljava/lang/Integer;
    const-string v10, "offset"

    invoke-static {v6, v10}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/squareup/haha/perflib/ArrayInstance;->asCharArray(II)[C

    move-result-object v2

    .line 107
    .local v2, "chars":[C
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 108
    .end local v0    # "array":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v2    # "chars":[C
    .end local v6    # "offset":Ljava/lang/Integer;
    :cond_2
    invoke-static {v8}, Lcom/squareup/leakcanary/HahaHelper;->isByteArray(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v0, v8

    .line 110
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 114
    .restart local v0    # "array":Lcom/squareup/haha/perflib/ArrayInstance;
    :try_start_0
    const-class v10, Lcom/squareup/haha/perflib/ArrayInstance;

    const-string v11, "asRawByteArray"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    .line 115
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    .local v1, "asRawByteArray":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 117
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v1, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 118
    .local v7, "rawByteArray":[B
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 119
    .end local v1    # "asRawByteArray":Ljava/lang/reflect/Method;
    .end local v7    # "rawByteArray":[B
    :catch_0
    move-exception v4

    .line 120
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 121
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 123
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 127
    .end local v0    # "array":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find char array in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;
    .locals 2
    .param p0, "instance"    # Lcom/squareup/haha/perflib/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Instance;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance;

    .line 159
    .local v0, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z
    .locals 4
    .param p0, "clazz"    # Lcom/squareup/haha/perflib/ClassObj;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "extendsThread":Z
    move-object v1, p0

    .line 68
    .local v1, "parentClass":Lcom/squareup/haha/perflib/ClassObj;
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 75
    :cond_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    goto :goto_0
.end method

.method static fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;
    .locals 2
    .param p0, "fieldValue"    # Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Lcom/squareup/haha/perflib/Field;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/squareup/haha/perflib/Field;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Field;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 165
    .local v0, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static hasField(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 174
    .local v0, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v1, 0x1

    .line 179
    .end local v0    # "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isByteArray(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    instance-of v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/squareup/haha/perflib/ArrayInstance;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    sget-object v1, Lcom/squareup/haha/perflib/Type;->BYTE:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCharArray(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 150
    instance-of v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/squareup/haha/perflib/ArrayInstance;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    sget-object v1, Lcom/squareup/haha/perflib/Type;->CHAR:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 139
    instance-of v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    :cond_0
    move-object v0, p0

    .line 142
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 143
    .local v0, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v2, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-eq v1, v2, :cond_1

    .line 144
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    sget-object v1, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPrimitiveWrapper(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 132
    instance-of v0, p0, Lcom/squareup/haha/perflib/ClassInstance;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    check-cast p0, Lcom/squareup/haha/perflib/ClassInstance;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;
    .locals 3
    .param p0, "holder"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "nameField":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 60
    const-string v2, "Thread name not available"

    .line 62
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
