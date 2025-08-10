.class public final Lcom/github/salomonbrys/kodein/TypesKt;
.super Ljava/lang/Object;
.source "types.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u001a \u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\n\"\u0004\u0008\u0000\u0010\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\r\u001a\u0012\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000e\u001a\u00020\u000f\u001a%\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u000b0\n\"\u0008\u0008\u0000\u0010\u000b*\u00020\u00112\u0006\u0010\u0012\u001a\u0002H\u000b\u00a2\u0006\u0002\u0010\u0013\u001a\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001a\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\n\"\u0006\u0008\u0000\u0010\u000b\u0018\u0001H\u0087\u0008\u001a\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\n\"\u0006\u0008\u0000\u0010\u000b\u0018\u0001H\u0086\u0008\u001a\"\u0010\u0019\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u0002H\u000b\u0018\u00010\n\"\u0004\u0008\u0000\u0010\u000b*\u0008\u0012\u0004\u0012\u0002H\u000b0\rH\u0002\u001a\u001c\u0010\u001a\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u0002H\u000b\u0018\u00010\n\"\u0004\u0008\u0000\u0010\u000b*\u00020\u000fH\u0003\"\u001b\u0010\u0000\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\u0007\u0010\u0003\u00a8\u0006\u001b"
    }
    d2 = {
        "_needGATWrapper",
        "",
        "get_needGATWrapper",
        "()Z",
        "_needGATWrapper$delegate",
        "Lkotlin/Lazy;",
        "_needPTWrapper",
        "get_needPTWrapper",
        "_needPTWrapper$delegate",
        "TT",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "T",
        "cls",
        "Ljava/lang/Class;",
        "type",
        "Ljava/lang/reflect/Type;",
        "TTOf",
        "",
        "obj",
        "(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;",
        "_checkIsReified",
        "",
        "disp",
        "erased",
        "generic",
        "_getClassSuperTT",
        "_getTypeSuperTT",
        "kodein-core_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final _needGATWrapper$delegate:Lkotlin/Lazy;

.field private static final _needPTWrapper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v3, Lcom/github/salomonbrys/kodein/TypesKt;

    const-string v4, "kodein-core_main"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "_needPTWrapper"

    const-string v5, "get_needPTWrapper()Z"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v3, Lcom/github/salomonbrys/kodein/TypesKt;

    const-string v4, "kodein-core_main"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "_needGATWrapper"

    const-string v5, "get_needGATWrapper()Z"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lcom/github/salomonbrys/kodein/TypesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 19
    sget-object v0, Lcom/github/salomonbrys/kodein/TypesKt$_needPTWrapper$2;->INSTANCE:Lcom/github/salomonbrys/kodein/TypesKt$_needPTWrapper$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/github/salomonbrys/kodein/TypesKt;->_needPTWrapper$delegate:Lkotlin/Lazy;

    .line 31
    sget-object v0, Lcom/github/salomonbrys/kodein/TypesKt$_needGATWrapper$2;->INSTANCE:Lcom/github/salomonbrys/kodein/TypesKt$_needGATWrapper$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/github/salomonbrys/kodein/TypesKt;->_needGATWrapper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final TT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "cls"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public static final TT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 333
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lcom/github/salomonbrys/kodein/TypeTypeToken;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/TypeTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    goto :goto_0
.end method

.method public static final TTOf(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method private static final _checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .param p0, "disp"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x0

    .line 45
    .line 46
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 58
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v1, v2

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .local v0, "arg":Ljava/lang/reflect/Type;
    const-string v2, "arg"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "type.genericComponentType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 49
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v1, p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 50
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 51
    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v1, v2

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1

    .line 52
    .restart local v0    # "arg":Ljava/lang/reflect/Type;
    const-string v4, "arg"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 53
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    :cond_5
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 54
    .restart local v0    # "arg":Ljava/lang/reflect/Type;
    const-string v3, "arg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 56
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_6
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uses a type variable named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", therefore, the bound value can never be retrieved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 57
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final _getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    const-class v2, Lkotlin/Unit;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    return-object v1

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 285
    .local v0, "parent":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    const-class v2, Lkotlin/Unit;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypesKt;->TT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.github.salomonbrys.kodein.TypeToken<in T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final _getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 2
    .param p0, "$receiver"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    .line 294
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "$receiver":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypesKt;->_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 295
    .restart local p0    # "$receiver":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;

    .end local p0    # "$receiver":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypesKt;->_getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 296
    .restart local p0    # "$receiver":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    if-nez p0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "$receiver":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/TypesKt;->_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 297
    .restart local p0    # "$receiver":Ljava/lang/reflect/Type;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final synthetic access$_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p0, "disp"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static final synthetic access$_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/TypesKt;->_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$_getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/TypesKt;->_getTypeSuperTT(Ljava/lang/reflect/Type;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get_needGATWrapper$p()Z
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->get_needGATWrapper()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$get_needPTWrapper$p()Z
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypesKt;->get_needPTWrapper()Z

    move-result v0

    return v0
.end method

.method private static final erased()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method private static final generic()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/github/salomonbrys/kodein/TypesKt$generic$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/TypesKt$generic$1;-><init>()V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method private static final get_needGATWrapper()Z
    .locals 3

    sget-object v0, Lcom/github/salomonbrys/kodein/TypesKt;->_needGATWrapper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/github/salomonbrys/kodein/TypesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final get_needPTWrapper()Z
    .locals 3

    sget-object v0, Lcom/github/salomonbrys/kodein/TypesKt;->_needPTWrapper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/github/salomonbrys/kodein/TypesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
