.class public final Lcom/github/salomonbrys/kodein/LazyKodein;
.super Ljava/lang/Object;
.source "lazy.kt"

# interfaces
.implements Lkotlin/Lazy;
.implements Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/Lazy",
        "<",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        ">;",
        "Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0015\u0008\u0016\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0013\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0002H\u0086\u0002J\t\u0010\u0010\u001a\u00020\u0011H\u0096\u0001R\u0014\u0010\t\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\u0002X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/LazyKodein;",
        "Lkotlin/Lazy;",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;",
        "f",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "k",
        "(Lkotlin/Lazy;)V",
        "kodein",
        "getKodein",
        "()Lcom/github/salomonbrys/kodein/LazyKodein;",
        "value",
        "getValue",
        "()Lcom/github/salomonbrys/kodein/Kodein;",
        "invoke",
        "isInitialized",
        "",
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
.field private final synthetic $$delegate_0:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/Lazy;)V
    .locals 1
    .param p1, "k"    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy",
            "<+",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "k"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/LazyKodein;->$$delegate_0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "f"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<+",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/LazyKodein;-><init>(Lkotlin/Lazy;)V

    return-void
.end method


# virtual methods
.method public getKodein()Lcom/github/salomonbrys/kodein/LazyKodein;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    return-object p0
.end method

.method public getValue()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/LazyKodein;->$$delegate_0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-value>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/Kodein;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKodein;->getValue()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKodein;->getValue()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/LazyKodein;->$$delegate_0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    return v0
.end method
