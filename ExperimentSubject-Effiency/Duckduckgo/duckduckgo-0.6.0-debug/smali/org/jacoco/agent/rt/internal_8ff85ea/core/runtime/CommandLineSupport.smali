.class final Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;
.super Ljava/lang/Object;
.source "CommandLineSupport.java"


# static fields
.field private static final BLANK:C = ' '

.field private static final M_ESCAPED:I = 0x2

.field private static final M_PARSEARGUMENT:I = 0x1

.field private static final M_STRIPWHITESPACE:I = 0x0

.field private static final QUOTE:C = '\"'

.field private static final SLASH:C = '\\'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "current"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 127
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    :cond_0
    return-void
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "arg"    # Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "escaped":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    const/16 v4, 0x22

    if-ge v3, v2, :cond_2

    aget-char v5, v1, v3

    .line 36
    .local v5, "c":C
    const/16 v6, 0x5c

    if-eq v5, v4, :cond_0

    if-ne v5, v6, :cond_1

    .line 37
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .end local v5    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 42
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static quote(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 58
    .local v1, "seperate":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, "arg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/4 v1, 0x1

    .end local v3    # "arg":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static split(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "commandline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, "current":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 83
    .local v2, "mode":I
    const/16 v3, 0x20

    .line 84
    .local v3, "endChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .local v4, "arr$":[C
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_8

    aget-char v7, v4, v6

    .line 85
    .local v7, "c":C
    const/16 v8, 0x22

    const/16 v9, 0x5c

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 109
    :pswitch_0
    if-eq v7, v8, :cond_3

    if-ne v7, v9, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    if-ne v7, v3, :cond_2

    .line 112
    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 113
    const/4 v2, 0x0

    goto :goto_2

    .line 115
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 117
    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    .line 98
    :pswitch_1
    if-ne v7, v3, :cond_4

    .line 99
    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 100
    const/4 v2, 0x0

    goto :goto_4

    .line 101
    :cond_4
    if-ne v7, v9, :cond_5

    .line 102
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const/4 v2, 0x2

    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    goto :goto_4

    .line 87
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_7

    .line 88
    if-ne v7, v8, :cond_6

    .line 89
    const/16 v3, 0x22

    goto :goto_3

    .line 91
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/16 v3, 0x20

    .line 94
    :goto_3
    const/4 v2, 0x1

    .line 84
    .end local v7    # "c":C
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "arr$":[C
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_8
    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 122
    return-object v0

    .line 78
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "current":Ljava/lang/StringBuilder;
    .end local v2    # "mode":I
    .end local v3    # "endChar":I
    :cond_9
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
