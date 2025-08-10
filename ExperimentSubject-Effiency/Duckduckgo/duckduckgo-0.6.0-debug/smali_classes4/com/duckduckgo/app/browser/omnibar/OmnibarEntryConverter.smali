.class public interface abstract Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;
.super Ljava/lang/Object;
.source "OmnibarEntryConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;",
        "",
        "convertQueryToUri",
        "Landroid/net/Uri;",
        "inputQuery",
        "",
        "convertUri",
        "input",
        "isWebUrl",
        "",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract convertQueryToUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract convertUri(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isWebUrl(Ljava/lang/String;)Z
.end method
