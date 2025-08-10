.class final Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    .line 123
    return-void
.end method

.method constructor <init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "i"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    .line 135
    iget v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 136
    iget v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 137
    iget-wide v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    .line 138
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 139
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    .line 140
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal3:Ljava/lang/String;

    .line 141
    iget v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 142
    return-void
.end method


# virtual methods
.method isEqualTo(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Z
    .locals 7
    .param p1, "i"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 281
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 308
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal3:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 296
    :sswitch_0
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 300
    :sswitch_1
    iget-wide v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    iget-wide v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 300
    :goto_1
    return v1

    .line 298
    :sswitch_2
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 291
    :sswitch_3
    iget-wide v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    iget-wide v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 294
    :sswitch_4
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 287
    :sswitch_5
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 309
    :cond_5
    const/4 v1, 0x0

    .line 308
    :goto_5
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0xc -> :sswitch_2
        0x10 -> :sswitch_5
        0x12 -> :sswitch_1
        0x1e -> :sswitch_5
        0x1f -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method set(D)V
    .locals 2
    .param p1, "doubleVal"    # D

    .line 187
    const/4 v0, 0x6

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    .line 189
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    double-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 190
    return-void
.end method

.method set(F)V
    .locals 2
    .param p1, "floatVal"    # F

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 176
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 177
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 178
    return-void
.end method

.method set(I)V
    .locals 2
    .param p1, "intVal"    # I

    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 152
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 153
    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 154
    return-void
.end method

.method set(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hashCode"    # I

    .line 265
    const/16 v0, 0x21

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 266
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 267
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 268
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .line 207
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 208
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal3:Ljava/lang/String;

    .line 211
    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 231
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 233
    return-void

    .line 221
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 222
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 223
    return-void

    .line 213
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 218
    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 219
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method set(J)V
    .locals 2
    .param p1, "longVal"    # J

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 164
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    .line 165
    long-to-int v1, p1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 166
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsmIndex"    # I

    .line 246
    const/16 v0, 0x12

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 247
    int-to-long v1, p3

    iput-wide v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    .line 248
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    .line 250
    nop

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int v1, v1, p3

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 252
    return-void
.end method
