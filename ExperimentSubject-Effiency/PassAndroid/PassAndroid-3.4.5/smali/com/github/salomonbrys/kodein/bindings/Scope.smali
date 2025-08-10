.class public interface abstract Lcom/github/salomonbrys/kodein/bindings/Scope;
.super Ljava/lang/Object;
.source "userScopes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/Scope;",
        "C",
        "",
        "getRegistry",
        "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
        "context",
        "(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract getRegistry(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
