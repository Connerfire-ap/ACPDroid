.class final Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinContainerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_transformBinding(Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<TA;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "arg",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $binding:Lcom/github/salomonbrys/kodein/bindings/Binding;

.field final synthetic $key:Lcom/github/salomonbrys/kodein/Kodein$Key;

.field final synthetic $overrideLevel:I

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;Lcom/github/salomonbrys/kodein/bindings/Binding;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$binding:Lcom/github/salomonbrys/kodein/bindings/Binding;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iput p4, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$overrideLevel:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 129
    iget-object v2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$binding:Lcom/github/salomonbrys/kodein/bindings/Binding;

    new-instance v1, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;

    new-instance v0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;

    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;

    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_map:Lcom/github/salomonbrys/kodein/internal/CMap;
    invoke-static {v3}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->access$get_map$p(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;)Lcom/github/salomonbrys/kodein/internal/CMap;

    move-result-object v3

    new-instance v4, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    iget-object v5, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v6, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$overrideLevel:I

    iget-object v7, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;

    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->_node:Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;
    invoke-static {v7}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;->access$get_node$p(Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;)Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;ILcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl;-><init>(Lcom/github/salomonbrys/kodein/internal/CMap;Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$Node;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinContainer;

    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v4, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$overrideLevel:I

    invoke-direct {v1, v0, v3, v4}, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V

    move-object v0, v1

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinContainerImpl$_transformBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-interface {v2, v0, v1, p1}, Lcom/github/salomonbrys/kodein/bindings/Binding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
