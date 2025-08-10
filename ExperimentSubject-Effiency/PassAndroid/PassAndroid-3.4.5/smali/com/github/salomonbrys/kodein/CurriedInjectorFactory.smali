.class public final Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
.super Ljava/lang/Object;
.source "Injected.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;",
        "A",
        "",
        "injector",
        "Lcom/github/salomonbrys/kodein/KodeinInjector;",
        "arg",
        "Lkotlin/Function0;",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "(Lcom/github/salomonbrys/kodein/KodeinInjector;Lkotlin/jvm/functions/Function0;Lcom/github/salomonbrys/kodein/TypeToken;)V",
        "getArg",
        "()Lkotlin/jvm/functions/Function0;",
        "getArgType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getInjector",
        "()Lcom/github/salomonbrys/kodein/KodeinInjector;",
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
.field private final arg:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final argType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final injector:Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinInjector;Lkotlin/jvm/functions/Function0;Lcom/github/salomonbrys/kodein/TypeToken;)V
    .locals 1
    .param p1, "injector"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "arg"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinInjector;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->injector:Lcom/github/salomonbrys/kodein/KodeinInjector;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->arg:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-void
.end method


# virtual methods
.method public final getArg()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->arg:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public final getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->injector:Lcom/github/salomonbrys/kodein/KodeinInjector;

    return-object v0
.end method
