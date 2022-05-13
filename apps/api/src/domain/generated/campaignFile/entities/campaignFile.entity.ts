import { CampaignFileRole } from '@prisma/client'
import { Campaign } from '../../campaign/entities/campaign.entity'
import { Person } from '../../person/entities/person.entity'

export class CampaignFile {
  id: string
  filename: string
  mimetype: string
  campaignId: string
  personId: string
  role: CampaignFileRole
  campaign?: Campaign
  person?: Person
}
