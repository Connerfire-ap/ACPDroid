.class public final Lcom/github/salomonbrys/kodein/Kodein$Companion;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/Kodein;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bH\u0086\u0002J;\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000e0\r2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/Kodein$Companion;",
        "",
        "()V",
        "invoke",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "allowSilentOverride",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "withDelayedCallbacks",
        "Lkotlin/Pair;",
        "Lkotlin/Function0;",
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
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/Kodein$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic invoke$default(Lcom/github/salomonbrys/kodein/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 422
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Companion;->invoke(ZLkotlin/jvm/functions/Function1;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic withDelayedCallbacks$default(Lcom/github/salomonbrys/kodein/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 432
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final invoke(ZLkotlin/jvm/functions/Function1;)Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
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
            "Lcom/github/salomonbrys/kodein/Kodein;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    invoke-direct {v0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/Kodein;

    return-object v0
.end method

.method public final withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 1
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
    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->Companion:Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method
