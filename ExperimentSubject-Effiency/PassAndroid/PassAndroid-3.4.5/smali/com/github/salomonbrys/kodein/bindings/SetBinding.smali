.class public final Lcom/github/salomonbrys/kodein/bindings/SetBinding;
.super Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;
.source "set.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding",
        "<",
        "Lkotlin/Unit;",
        "TT;",
        "Ljava/util/Set",
        "<+TT;>;>;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
        "<",
        "Ljava/util/Set",
        "<+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u00032\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u0005B+\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0008\u0012\u0014\u0010\t\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0008\u00a2\u0006\u0002\u0010\nJ0\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u001cH\u0016R*\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u000cj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR,\u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u00130\u00128PX\u0091\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/SetBinding;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;",
        "",
        "elementType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "createdType",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;)V",
        "_set",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "getCreatedType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getElementType",
        "set",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "set$annotations",
        "()V",
        "getSet$kodein_core_main",
        "()Ljava/util/Set;",
        "getInstance",
        "kodein",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final _set:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final createdType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final elementType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;)V
    .locals 1
    .param p1, "elementType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+",
            "Ljava/util/Set",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "elementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/bindings/BaseMultiBinding;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->elementType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->_set:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static synthetic set$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->factoryFullName(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getArgType(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->elementType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p3, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/util/Set;
    .locals 1
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+",
            "Ljava/util/Set",
            "<+TT;>;>;",
            "Lkotlin/Unit;",
            ")",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/util/Set;
    .locals 4
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+",
            "Ljava/util/Set",
            "<+TT;>;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "kodein"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "key"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->elementType:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-virtual {p2}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    .line 51
    .local v0, "subKey":Lcom/github/salomonbrys/kodein/Kodein$Key;
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->_set:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v1, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;

    invoke-direct {v1, p1, v0}, Lcom/github/salomonbrys/kodein/bindings/SetBinding$getInstance$1;-><init>(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getSet$kodein_core_main()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<",
            "Lkotlin/Unit;",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/SetBinding;->_set:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableSet<com.github.salomonbrys.kodein.bindings.Binding<kotlin.Unit, T>>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
