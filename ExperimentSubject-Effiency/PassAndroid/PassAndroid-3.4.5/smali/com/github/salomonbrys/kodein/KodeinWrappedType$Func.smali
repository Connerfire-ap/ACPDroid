.class final Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;
.super Ljava/lang/Object;
.source "types.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinWrappedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Func"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\'\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;",
        "",
        "()V",
        "Equals",
        "",
        "left",
        "Ljava/lang/reflect/Type;",
        "right",
        "",
        "([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z",
        "HashCode",
        "",
        "type",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    .end local p0    # "this":Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;
    sput-object p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->INSTANCE:Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    return-void
.end method


# virtual methods
.method public final Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 5
    .param p1, "left"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "right"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    instance-of v0, p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v0, :cond_1

    .line 230
    check-cast p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    .end local p1    # "left":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    .line 238
    .end local p2    # "right":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v2

    .line 232
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p2, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v0, :cond_2

    .line 233
    check-cast p2, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    .end local p2    # "right":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    goto :goto_0

    .line 235
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 239
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local p1    # "left":Ljava/lang/reflect/Type;
    .end local p2    # "right":Ljava/lang/reflect/Type;
    :goto_1
    move v2, v0

    .line 238
    goto :goto_0

    .line 240
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 241
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v0, p1

    .line 242
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v0, "left.rawType"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v4, "right.rawType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "left":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v3, "left.actualTypeArguments"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "right":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "right.actualTypeArguments"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    .line 244
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 245
    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v0, p1

    .line 246
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v0, "left.lowerBounds"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v4, "right.lowerBounds"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "left":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v3, "left.upperBounds"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/WildcardType;

    .end local p2    # "right":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "right.upperBounds"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 248
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 249
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 250
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "left":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "left.genericComponentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2    # "right":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "right.genericComponentType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto/16 :goto_1

    .line 252
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_9

    move-object v0, p2

    .line 253
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 254
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "left":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "left.bounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .end local p2    # "right":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "right.bounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    goto/16 :goto_1

    .line 256
    .restart local p1    # "left":Ljava/lang/reflect/Type;
    .restart local p2    # "right":Ljava/lang/reflect/Type;
    :cond_9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public final Equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .locals 9
    .param p1, "left"    # [Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "right"    # [Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "left"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "right"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    .line 264
    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    move-object v3, p2

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-eq v4, v3, :cond_0

    .line 344
    :goto_0
    return v5

    :cond_0
    move-object v3, p1

    .line 266
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 343
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .local v1, "element$iv":I
    move v2, v1

    .line 266
    .local v2, "it":I
    sget-object v3, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->INSTANCE:Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    aget-object v7, p1, v2

    aget-object v8, p2, v2

    invoke-virtual {v3, v7, v8}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    :goto_1
    if-eqz v3, :cond_1

    move v3, v5

    .end local v1    # "element$iv":I
    .end local v2    # "it":I
    :goto_2
    move v5, v3

    .line 344
    goto :goto_0

    .restart local v1    # "element$iv":I
    .restart local v2    # "it":I
    :cond_2
    move v3, v5

    .line 266
    goto :goto_1

    .end local v1    # "element$iv":I
    .end local v2    # "it":I
    :cond_3
    move v3, v6

    .line 344
    goto :goto_2
.end method

.method public final HashCode(Ljava/lang/reflect/Type;)I
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const-string v2, "type"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 198
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 200
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 201
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v4, "type.rawType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v1

    .line 202
    .local v1, "hashCode":I
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    move v2, v3

    :goto_1
    array-length v3, v4

    if-ge v2, v3, :cond_0

    aget-object v0, v4, v2

    .line 203
    .local v0, "arg":Ljava/lang/reflect/Type;
    mul-int/lit8 v3, v1, 0x1f

    const-string v5, "arg"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v5

    add-int v1, v3, v5

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .end local v1    # "hashCode":I
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 207
    :cond_3
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_5

    .line 208
    const/4 v1, 0x0

    .restart local v1    # "hashCode":I
    move-object v2, p1

    .line 209
    check-cast v2, Ljava/lang/reflect/WildcardType;

    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    move v2, v3

    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 210
    .restart local v0    # "arg":Ljava/lang/reflect/Type;
    mul-int/lit8 v5, v1, 0x13

    const-string v6, "arg"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v6

    add-int v1, v5, v6

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    :cond_4
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 212
    .restart local v0    # "arg":Ljava/lang/reflect/Type;
    mul-int/lit8 v4, v1, 0x11

    const-string v5, "arg"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v5

    add-int v1, v4, v5

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 215
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .end local v1    # "hashCode":I
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v2, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_6

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "type.genericComponentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v2

    add-int/lit8 v1, v2, 0x35

    goto/16 :goto_0

    .line 216
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_6
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_7

    .line 217
    const/4 v1, 0x0

    .line 218
    .restart local v1    # "hashCode":I
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 219
    .restart local v0    # "arg":Ljava/lang/reflect/Type;
    mul-int/lit8 v4, v1, 0x1d

    const-string v5, "arg"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v5

    add-int v1, v4, v5

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 222
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .end local v1    # "hashCode":I
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto/16 :goto_0
.end method
