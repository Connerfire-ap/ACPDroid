.class public final Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;
.super Ljava/lang/Object;
.source "KodeinImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;",
        "",
        "()V",
        "withDelayedCallbacks",
        "Lkotlin/Pair;",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "Lkotlin/Function0;",
        "",
        "allowSilentOverride",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "Lkotlin/ExtensionFunctionType;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic withDelayedCallbacks$default(Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 51
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 5
    .param p1, "allowSilentOverride"    # Z
    .param p2, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Pair",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "init"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    new-instance v3, Lcom/github/salomonbrys/kodein/Kodein$Builder;

    new-instance v4, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;

    const/4 v1, 0x1

    new-instance v2, Lcom/github/salomonbrys/kodein/internal/CMap;

    invoke-direct {v2}, Lcom/github/salomonbrys/kodein/internal/CMap;-><init>()V

    invoke-direct {v4, v1, p1, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;-><init>(ZZLcom/github/salomonbrys/kodein/internal/CMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v4, v1, v2, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .local v0, "kodein":Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
    new-instance v1, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion$withDelayedCallbacks$1;

    invoke-direct {v1, v0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion$withDelayedCallbacks$1;-><init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method
