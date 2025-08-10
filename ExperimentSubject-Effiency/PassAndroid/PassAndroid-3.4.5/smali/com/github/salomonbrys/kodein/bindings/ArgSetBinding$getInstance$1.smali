.class final Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "set.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Lcom/github/salomonbrys/kodein/bindings/Binding",
        "<-TA;TT;>;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "it",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "invoke",
        "(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $arg:Ljava/lang/Object;

.field final synthetic $kodein:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

.field final synthetic $subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$arg:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/Object;
    .locals 3
    .param p1, "it"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<-TA;TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$kodein:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$subKey:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->$arg:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/github/salomonbrys/kodein/bindings/Binding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/github/salomonbrys/kodein/bindings/Binding;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/ArgSetBinding$getInstance$1;->invoke(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
