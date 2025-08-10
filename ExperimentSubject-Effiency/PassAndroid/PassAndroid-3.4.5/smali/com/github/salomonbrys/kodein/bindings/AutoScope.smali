.class public interface abstract Lcom/github/salomonbrys/kodein/bindings/AutoScope;
.super Ljava/lang/Object;
.source "userScopes.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/Scope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/Scope",
        "<TC;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002J\r\u0010\u0003\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/AutoScope;",
        "C",
        "Lcom/github/salomonbrys/kodein/bindings/Scope;",
        "getContext",
        "()Ljava/lang/Object;",
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
.method public abstract getContext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method
